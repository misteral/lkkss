class DownloadsController < InheritedResources::Base

  def new
     @remi='aertg';
     #@s = Excelx.new("http://localhost:3000/files/book.xlsx") { |file| file.write}
     @book = Spreadsheet.open 'public/uploads/certificate.xls'
     @sheet1=@book.worksheet 1
     @row1 = @sheet1.row(3)
     @akt=@row1[7]

     redirect_to :action =>'mail/index'
  end
  def rem
    
  end
end
