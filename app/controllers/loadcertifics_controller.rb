class LoadcertificsController < InheritedResources::Base
  before_filter :authenticate_user! #, :except => [:show, :index]
  def show
    @loadcertific = Loadcertific.find(params[:id])
    @list= 'public'+@loadcertific.certific.url
    @spreed = Spreadsheet.open 'public'+@loadcertific.certific.url
    @sheet=@spreed.worksheet 1   #выбираем лист   p.s. счет с нуля
    @row1 = @sheet.row(7)         #выбираем строку
    @akt = 2
    $named = findcell(1,11)
    if $named.include?("(")         #определяет какой из актов ос$minвиделельствования или входа
      input_control
    else
      examination
    end
    $min = @manufacture
  end

  def findcell(row,coll)
    @findrow = @sheet.row(row)
    @findcell = @findrow[coll]
  end

  def examination                        #для освидетельствования
    $number = findcell(1,12)
    $named = findcell(0,8)
    $date = findcell(1,14).split(' ')[1]
    $place = findcell(3,7)
    $sizepipe = findcell(3,21)
    $gost = findcell(5,5)
    $typepipe = findcell(5,15)
    $strengthclass = findcell(5,22)
    $ty = findcell(7,6)
    $manufacture = findcell(7,16)
    $subitem = [[" " ],[" "],[" "],[" "] ] #инициализация массива + немер подпункта
    #@subitem[0][0] = findcell(12,0).to_i
    j=0
    begin
      $subitem[j][0] = findcell(12+j*12,0).to_i
      $subitem[j][1] = findcell(12+(j*12),1).split('/')[0]         #номер трубы
      $subitem[j][2] = findcell(16+(j*12),1).split('/')[0]          #номер партии
      $subitem[j][3] = findcell(20+j*12,1)                        #номер плавки
      $subitem[j][4] = findcell(12+j*12,2)                        #номер сертификата
      $subitem[j][5] = findcell(12+j*12,4)                        #дата отгрузки
      $subitem[j][6] = findcell(12+j*12,6)                        #дата нанисения изоляции
      $subitem[j][7] = findcell(15+j*12,7).to_i                        #фактический диам маркер
      $subitem[j][8] = findcell(21+j*12,7).to_i                        #фактический диам немаркер
      $subitem[j][9] = findcell(15+j*12,8)                        #овальность маркер
      $subitem[j][10] = findcell(21+j*12,8)                        #овальность немаркер
      $subitem[j][11] = findcell(12+j*12,9)                        #длинна ,м
      $subitem[j][12] = findcell(12+j*12,11)                        #толщина стенки   1
      $subitem[j][13] = findcell(15+j*12,11)                        #2
      $subitem[j][14] = findcell(18+j*12,11)                        #3
      $subitem[j][15] = findcell(21+j*12,11)                        #4
      $subitem[j][16] = findcell(12+j*12,13)                        #тип дефекта
      $subitem[j][17] = findcell(12+j*12,15)                        #от марк торца
      $subitem[j][18] = findcell(12+j*12,17)                        #длинна, мм
      $subitem[j][19] = findcell(12+j*12,18)                        #ширина, мм
      $subitem[j][20] = findcell(12+j*12,20)                         #глубина, мм
      $subitem[j][21] = findcell(12+j*12,21)                         #ост толщина, мм
      $subitem[j][22] = findcell(12+j*12,22)                         #ост маг инд МТс    1
      $subitem[j][23] = findcell(15+j*12,22)                         #2
      $subitem[j][24] = findcell(18+j*12,22)                         #3
      $subitem[j][25] = findcell(21+j*12,22)                         #4
      $subitem[j][26] = findcell(12+j*12,25)                         #отметка о годности
      j+=1
    end  while !(findcell(12+j*12,25).nil?)
    $konusi = j
    $instrum = findcell(61,7)
    $list = findcell(62,2)
    $incapsul = findcell(64,2)
    $face1 = findcell(66,6)
    $post1 = findcell(66,14)
    $date1 = findcell(66,23)
    $face2 = findcell(69,6)
    $post2 = findcell(69,14)
    $date2 = findcell(69,23)
    $face3 = findcell(72,6)
    $post3 = findcell(72,14)
    $date3 = findcell(72,23)
  end

  def input_control
    #@named =@named[1..-2]         #скобки затирает
    $number = findcell(0,12)
    $date = findcell(0,15).split(' ')[1]
    $place = findcell(3,8)
    $sizepipe = findcell(3,23).to_i.to_s + "x" + findcell(3,25).to_i.to_s
    $gost = findcell(5,6)
    $typepipe = findcell(5,16)
    $strengthclass = findcell(5,24)
    $ty = findcell(7,7)
    $manufacture = findcell(7,16)
    $subitem = [[" "],[" "],[" "],[" "] ] #инициализация массива + немер подпункта
    j=0
    begin
      $subitem[j][0] = findcell(12+j*12,0).to_i
      $subitem[j][1] = findcell(12+(j*12),1).to_i        #номер трубы
      $subitem[j][2] = findcell(18+(j*12),1).to_i          #номер партии
      $subitem[j][3] = findcell(20+j*12,1)                        #номер плавки
      $subitem[j][4] = findcell(12+j*12,2).to_i                        #номер сертификата
      $subitem[j][5] = findcell(12+j*12,5)                        #дата отгрузки
      $subitem[j][6] = findcell(12+j*12,7)                        #дата нанисения изоляции
      $subitem[j][7] = findcell(15+j*12,8).to_i                        #фактический диам маркер
      $subitem[j][8] = findcell(21+j*12,8).to_i                        #фактический диам немаркер
      $subitem[j][9] = findcell(15+j*12,9)                        #овальность маркер
      $subitem[j][10] = findcell(21+j*12,9)                        #овальность немаркер
      $subitem[j][11] = findcell(12+j*12,10)                        #длинна ,м
      $subitem[j][12] = findcell(12+j*12,12)                        #толщина стенки   1
      $subitem[j][13] = findcell(15+j*12,12)                        #2
      $subitem[j][14] = findcell(18+j*12,12)                        #3
      $subitem[j][15] = findcell(21+j*12,12)                        #4
      $subitem[j][16] = findcell(12+j*12,14)                        #тип дефекта
      $subitem[j][17] = findcell(12+j*12,15)                        #от марк торца
      $subitem[j][18] = findcell(12+j*12,17)                        #длинна, мм
      $subitem[j][19] = findcell(12+j*12,19)                        #ширина, мм
      $subitem[j][20] = findcell(12+j*12,22)                         #глубина, мм
      $subitem[j][21] = findcell(12+j*12,23)                         #ост толщина, мм
      $subitem[j][22] = findcell(12+j*12,24)                         #ост маг инд МТс    1
      $subitem[j][23] = findcell(15+j*12,24)                         #2
      $subitem[j][24] = findcell(18+j*12,24)                         #3
      $subitem[j][25] = findcell(21+j*12,24)                         #4
      $subitem[j][26] = findcell(12+j*12,27)                         #отметка о годности
      $subitem[j][27] = findcell(12+j*12,16)                         #от пр. шва, м
      j+=1
    end  while !(findcell(12+j*12,27).nil?)
    $konusi = j
    $instrum = findcell(61,8)
    $list = findcell(62,2)
    $incapsul = findcell(64,2)
    $face1 = findcell(66,7)
    $post1 = findcell(66,15)
    $date1 = findcell(66,26)
    $face2 = findcell(69,7)
    $post2 = findcell(69,15)
    $date2 = findcell(69,26)
    $face3 = findcell(72,7)
    $post3 = findcell(72,15)
    $date3 = findcell(72,26)
  end

  def download

    $face1 =  $face1.nil? ? " " : $face1
    $face2 =  $face2.nil? ? " " : $face2
    $face3 =  $face3.nil? ? " " : $face3
    $post1 =  $post1.nil? ? " " : $post1
    $post2 =  $post2.nil? ? " " : $post2
    $post3 =  $post3.nil? ? " " : $post3
    $instrum = $instrum.nil? ? " " : $instrum

    if !Manufactur.find_by_name($manufacture)
      @pm = Manufactur.new(:name => $manufacture)
      @pm.save
    end

    if !Gost.find_by_name($gost)
      @pm = Gost.new(:name => $gost)
      @pm.save
    end

    if !Ty.find_by_name($ty)
      @pm = Ty.new(:name => $ty)
      @pm.save
    end

    @size = SizesPipe.new(:diameter_trunk => $sizepipe.split(/[xX]+/)[0], :wall_tickness => $sizepipe.split(/[xX]+/)[1].to_s, :strength_class => $strengthclass, :document_id => 1)
    @size.save

    if !TypePipe.find_by_name($typepipe)
      @type = TypePipe.new(:name => $typepipe)
      @type.save
    end

    @data = DataPipe.new(:number_product => $subitem[0][2], :certific => $subitem[0][4])
    @data.save

    if !InstallationSite.find_by_object($place)
      @pm = InstallationSite.new(:object => $place)
      @pm.save
    end

    @concl = Conclusion.new(:output => $incapsul, :document_id => 1)
    @concl.save

    if !RepresentHost.find_by_last_name($face1)
      @pm = RepresentHost.new(:last_name => $face1, :job => $post1)
      @pm.save
    end

    if !RepresentTran.find_by_last_name($face3)
      @pm = RepresentTran.new(:last_name => $face3, :job => $post3)
      @pm.save
    end

    if !Delegate.find_by_last_name($face2)
      if $named.include?("(")
        @pm = Delegate.new(:last_name => $face2, :job => $post2)
      else
        @pm = Delegate.new(:last_name => $face2, :level_nk => $post2)
      end
      @pm.save
    end

    if !Instrumentation.find_by_name($insrtum)
      @pm = Instrumentation.new(:name => $instrum)
      @pm.save
    end

    if !Certificate.find_by_number($number)
      @certifi = Certificate.new(:name => $named, :number => $number, :date_issue => $date, :ty_id => Ty.find_by_name($ty).id, :gost_id => Gost.find_by_name($gost).id, :manufactur_id => Manufactur.find_by_name($manufacture).id, :sizes_pipe_id => @size.id, :date_issue => $date, :conclusion_id => @concl.id, :delegate_id => Delegate.find_by_last_name($face2).id, :represent_trans_id => RepresentTran.find_by_last_name($face3).id, :represent_host_id => RepresentHost.find_by_last_name($face1).id, :instrumentation_id => 1, :type_pipe_id => TypePipe.find_by_name($typepipe).id, :support_document_id => 1, :installation_site_id => InstallationSite.find_by_object($place).id)
      @certifi.save

      for i in 0..$konusi-1
        if !DataPipe.find_by_number_product($subitem[i][2])
          @pm = DataPipe.new(:number_product => $subitem[i][2], :certific => $subitem[i][4])
          @pm.save
        end

      @piper = Pipe.new(:notation => $subitem[i][1], :data_pipe_id => DataPipe.find_by_number_product($subitem[i][2]).id, :passport_pipe_id => 1)
      @piper.save

      @pm = Result.new(:certificate_id => Certificate.find_by_number($number).id, :pipe_id => @piper.id, :date_issue => $subitem[i][5], :application_isolation => $subitem[i][6], :outside_diameter => $subitem[i][7].to_s + "/" + $subitem[i][8].to_s, :roundness => $subitem[i][9].to_s + "/" + $subitem[i][10].to_s, :length_all => $subitem[i][11].to_s, :wall_tickness => $subitem[i][12].to_s + "/" + $subitem[i][13].to_s + "/" + $subitem[i][14].to_s + "/" + $subitem[i][15].to_s, :type_def => $subitem[i][16], :from_mark_butt => $subitem[i][17], :length => $subitem[i][18], :width => $subitem[i][19], :deep => $subitem[i][20], :thickness => $subitem[i][21], :magnet => $subitem[i][22].to_s + "/" + $subitem[i][23].to_s + "/" + $subitem[i][24].to_s + "/" + $subitem[i][25].to_s, :mark_date => $subitem[i][26], :from_right_seam => $subitem[i][27])
      @pm.save

      end
    end
    redirect_to :action => 'index', :controller => 'certificates'
  end

  def undownload

   redirect_to :action => 'new', :controller => 'loadcertifics'

  end

end
