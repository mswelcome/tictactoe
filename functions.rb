#Functions for Phonebook

require 'pg'
load './local_env.rb' if File.exist?('./local_env.rb')

def connectwb()
  wbinfo = {

    host: ENV['RDS_HOST'],
    port:ENV['RDS_PORT'],
    dbname:ENV['RDS_DB_NAME'],
    user:ENV['RDS_USERNAME'],
    password:ENV['RDS_PASSWORD']

  }

  wb = PG::Connection.new(wbinfo)
end

def createttt()

  begin

    wb = connectwb()

     wb.exec ("CREATE TABLE public.ttt (
                id serial NOT NULL,
                p1name varchar(50),
                p2name varchar(50),
                winner varchar(50),
                datetime varchar(25))");

    rescue PG::Error => e

      puts e.message

    ensure

      wb.close if wb

    end


end

def insertgame(p1name,p2name,winner,datetime)
  wb = connectwb()
  wb.exec("INSERT INTO public.ttt(p1name, p2name, winner, datetime)VALUES('#{p1name}','#{p2name}','#{winner}','#{datetime}')")
end

def generate_table()
    wb = connectwb()
	response_obj = wb.exec("SELECT * FROM public.ttt")
	html = ''
	html << "
	<tr>
	    <td>ID</td>
	    <td>Player 1 Name</td>
	    <td>Player 2 Name</td>
	    <td>Winner</td>
	    <td>Date time</td>
	  </tr>"

    # GENERATE ROW
	response_obj.each do |row|
		html << "\t<tr>"
		row.each {|cell| html << "\t\t<td>#{cell[1]}</td>\n"}
		html << "\t</tr>"
	end
	# END TABLE
	#html << "</table>"
	# RETURN FINAL STRING
	html
end
