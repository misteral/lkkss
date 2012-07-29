#encoding: utf-8
class ReportControlsController < InheritedResources::Base
  def create
    $posti = ReportControl.new(params[:report_control])
    file_before = "public/download/all.xls"
    file_after = "public/qwerty.xls"
    $book = Spreadsheet.open file_before
    series(325,0)
    series(426,1)
    series(530,2)
    series(720,3)
    series(1020,4)
    series(1220,5)
    series(1420,6)

    $book.write file_after
    redirect_to  :action => 'show', :controller => 'report_controls'
  end

  def show
    #$cuka = $cuk
  end

  def series(diameter, list)
    i = 2
    j = 0
    @sheet = $book.worksheet list
    @sheet[2,0] = 1
    Certificate.find_all_by_name("(входного контроля труб)").each do |cer|
      if SizesPipe.find(cer.sizes_pipe_id).diameter_trunk.to_i == diameter #or cer.date_issue.month == $posti.date_start.month

        Result.find_all_by_certificate_id(cer.id).each do |res|
          #$cuk = 12345
          @row = @sheet.row(i)
          @row[0] = i
          @row[1] = cer.number + " /" + Pipe.find(res.pipe_id).notation + " /" + DataPipe.find(Pipe.find(res.pipe_id).data_pipe).number_product
          @row[2] = SizesPipe.find(cer.sizes_pipe_id).diameter_trunk.to_s + "x" + SizesPipe.find(cer.sizes_pipe_id).wall_tickness
          @row[4] = "1"
          @row[6] = DataPipe.find(Pipe.find(res.pipe_id).data_pipe).certific
          @row[7] = "Сарапул/           ООО \"Газпром трансгаз Чайковский\""
          @row[10] = Manufactur.find(cer.manufactur_id).name
          @row[11] = res.length_all
          @row[12] = cer.date_issue.to_date.to_s
          @row[13] = "П"
          i+=1
        end
        j+=1
      end
    end
  end
end
