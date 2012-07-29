#encoding: utf-8
class MagazinesController < InheritedResources::Base
  def create
    $post = Magazine.new(params[:magazine])
    @spread = Spreadsheet.open 'public/download/journal.xls'

    @sheet = @spread.worksheet 0   #выбираем лист   p.s. счет с нуля
    @sheet[33,13] = $post.start.to_date.to_s

    @sheet = @spread.worksheet 1   #выбираем лист   p.s. счет с нуля
    i = 1
    j = 1
    # конечно за код написаный ниже, стыдно ...но хз как зделать по другому ...если узнаю как правильно, переделаю
    Certificate.find_all_by_name("(входного контроля труб)").each do |cer|
      if cer.date_issue > $post.start
        Result.find_all_by_certificate_id(cer.id).each do |res|
          @row = @sheet.row(i)
          @row[0] = i
          @row[1] = j
          @row[2] = cer.number
          @row[3] = cer.date_issue.to_date.to_s
          @row[4] = Pipe.find(res.pipe_id).notation
          @row[5] = SizesPipe.find(cer.sizes_pipe_id).diameter_trunk + "x" + SizesPipe.find(cer.sizes_pipe_id).wall_tickness
          @row[6] = Ty.find(cer.ty_id).name.length < 6 ? "нет" : "да"
          @row[7] = Manufactur.find(cer.manufactur_id).name
          @row[8] = res.mark_date
          i+=1
        end
        j+=1
      end
    end

    @sheet = @spread.worksheet 2   #выбираем лист   p.s. счет с нуля
    i = 1
    j = 1
    Certificate.find_all_by_name("Акт освидетельствования труб").each do |cer|
      if cer.date_issue > $post.start
        Result.find_all_by_certificate_id(cer.id).each do |res|
          @row = @sheet.row(i)
          @row[0] = i
          @row[1] = j
          @row[2] = cer.number
          @row[3] = cer.date_issue.to_date.to_s
          @row[4] = Pipe.find(res.pipe_id).notation
          @row[5] = SizesPipe.find(cer.sizes_pipe_id).diameter_trunk + "x" + SizesPipe.find(cer.sizes_pipe_id).wall_tickness
          @row[6] = Ty.find(cer.ty_id).name.length < 6 ? "нет" : "да"
          @row[7] = Manufactur.find(cer.manufactur_id).name
          @row[8] = res.mark_date
          i+=1
        end
        j+=1
      end
    end

    @spread.write 'public/journal.xls'
    redirect_to :action => 'show', :controller => 'magazines'
  end

  def show

  end

end
