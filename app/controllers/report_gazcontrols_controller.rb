#encoding: utf-8
class ReportGazcontrolsController < InheritedResources::Base
  def create
    $posti = ReportGazcontrol.new(params[:report_gazcontrol])
    file_before = "public/download/GazNadzor.xls"
    file_after = "public/out_gaznadzor.xls"
    $book = Spreadsheet.open file_before
    case $posti.date_start.month.to_i
    when 1..3
    	first_month = "январь"
    	second_month = "февраль"
    	third_month = "март"
    	first_month_index = 1
    	second_month_index = 2
    	third_month_index = 3
    when 4..6
    	first_month = "апрель"
    	second_month = "май"
    	third_month = "июнь"   
    	first_month_index = 4
    	second_month_index = 5
    	third_month_index = 6    	 
    when 7..9
    	first_month = "июль"
    	second_month = "август"
    	third_month = "сентябрь" 
    	first_month_index = 7
    	second_month_index = 8
    	third_month_index = 9    	
    when 10..12
    	first_month = "октябрь"
    	second_month = "ноябрь"
    	third_month = "декабрь"
    	first_month_index = 10
    	second_month_index = 11
    	third_month_index = 12
    end
    				
    series(first_month, first_month_index, 0)
    series(second_month, second_month_index, 1)
    series(third_month, third_month_index, 2)
    
    $book.write file_after
    redirect_to  :action => 'show', :controller => 'report_gazcontrols'
  end

  def show
  	$cuka = $posti.date_start.month.to_i
  end

  def series(name_month, index_month, list)
    i = 4
    j = 0
    @sheet = $book.worksheet list 
    @sheet.name = name_month
    @sheet[4,0] = 1
    Certificate.find_all_by_name("(входного контроля труб)").each do |cer|
		if cer.date_issue.month.to_i == index_month
        	Result.find_all_by_certificate_id(cer.id).each do |res|
          		@row = @sheet.row(i)
          		@row[0] = i - 3
          		#@row[1] = cer.number + " /" + Pipe.find(res.pipe_id).notation + " /" + DataPipe.find(Pipe.find(res.pipe_id).data_pipe).number_product
          		#@row[2] = 
          		#@row[4] = 
          		@row[5] = "Труба стальная"
          		@row[6] = Manufactur.find(cer.manufactur_id).name #DataPipe.find(Pipe.find(res.pipe_id).data_pipe).certific
          		@row[7] = TypePipe.find(cer.type_pipe_id).name
          		@row[8] = SizesPipe.find(cer.sizes_pipe_id).diameter_trunk.to_s
          		@row[9] = SizesPipe.find(cer.sizes_pipe_id).wall_tickness.to_s
          		@row[10] = SizesPipe.find(cer.sizes_pipe_id).strength_class.to_s
          		@row[11] = Gost.find(cer.gost_id).name
          		@row[12] = Ty.find(cer.ty_id).name
          		@row[14] = res.application_isolation
          		@row[15] = res.mark_date
          		i+=1
        	end
        	j+=1
      	end
    end
  end
end
