#ocra tk3.rb C:\Ruby200\lib\tcltk\ --no-autoload --add-all-core

require 'csv'
$room_name = 10
s = "教卓"
# ここから！！


class Setup
 @room_number
 @number
 @count
 @patern
 @space
 # aはあけるかどうか a =1であける
 #paternは0は縦,1は横,2はジグザグ
 #countは何人いるか
  def initialize(room_number,number,patern,a,count)
    @room_number = room_number
    @number = number
    @patern = patern
    @space = a
    @count = count
   end

   def judge()
     p @patern
     p @space
     if (@room_number == 0 )
       B202()

      elsif (@room_number == 1 )
       B205()

      elsif (@room_number == 2)
        B302()
      elsif (@room_number == 3 )
        B303()
      elsif (@room_number == 4 )
        C103()
      elsif (@room_number == 5 )
        C104()
      end
  end

  def B202()
   if(@space == 0)
    record2 = [["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, nil], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, "1"], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, "1"], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, "1"], ["1", "1","1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil,nil, nil, nil, nil, "1"], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, "1"], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, "1"], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, nil], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, "1"], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1","1", "1", nil, nil, nil, nil, nil, nil, nil, "1"], ["1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", nil, nil, nil, nil, nil, nil, nil, "1"], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1"], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1"], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1"], [nil, nil, nil, nil, nil, nil, nil, nil,nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1"], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1"], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1"], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1"], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "1"]]
   else
   end

  m=0
  k=0
  l=0
  record3=record2
  if(@patern == 0)
  for i in 0..14
	for j in 0..10
		if(record2[j][i] == "1")
			 record3[m][k]=@number[l]
		 l+=1

		else record3[m][k]=record2[j][i]

		end
			if(m ==10)
			m=0
			k+=1
			else
			m+=1
			end

	end





end
  elsif(@patern == 1)
   for i in 0..11
	for j in 0..14
		if(record2[i][j] == "1")
			 record3[k][m]=@number[l]
		 l+=1

		else record3[k][m]=record2[i][j]

		end
			if(m ==14)
			m=0
			k+=1
			else
			m+=1
			end

	end

end
  else
  #じぐ


   for t in 0..2
   if(t == 0)
   m=0
k=0
s=0
   		for i in 0..11
			for j in 0..2
				if(record2[i][j] == "1")
			 	record3[k][m]=@number[l]
		 		l+=1
				else
				record3[k][m]=record2[i][j]
				end
					if(m ==2)
					m=0
					k+=1
					else
					m+=1
					end
			end
		end
	end
	if(t == 1)
	m=0
k=0
s=0
      	for i in 0..11
	    		for j in 5..9
					if(record2[i][j] == "1")
			 		record3[k][m+5]=@number[l]
		 			l+=1
					else
					record3[k][m+5]=record2[i][j]
					end
						if(m == 4)
						m=0
						k+=1
						else
						m+=1
						end
				end
		end
	end
	if(t == 2)
	m=0
k=0
s=0
   		for i in 0..11
			for j in 12..14
					if(record2[i][j] == "1")
			 		record3[k][m+12]=@number[l]
		 			l+=1
					else
					record3[k][m+12]=record2[i][j]
					end
						if(m == 2)
						m=0
						k+=1
						else
						m+=1
						end
			end
		end

   end

end




  end

  CSV.open("B202.csv", "wb") do |csv|
# encoding: Shift_JIS
s="教卓"
   csv << ["","","","","","","","","#{s.encode("Shift_JIS","UTF-8")}"]
   csv << [""]
	for i in 0..18

		csv<<["#{i+1}","#{record3[i][0]}","#{record3[i][1]}","#{record3[i][2]}","#{record3[i][3]}","#{record3[i][4]}","#{record3[i][5]}","#{record3[i][6]}","#{record3[i][7]}","#{record3[i][8]}","#{record3[i][9]}","#{record3[i][10]}","#{record3[i][11]}","#{record3[i][12]}","#{record3[i][13]}","#{record3[i][14]}"]
		j+=1

	end
end


  end
  def C104()



  end

   def C103()

     @room_number = "C103"
   if ( @space == 0)
	record2 = [nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"],["1", "1", "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", "1", "1"]
			 else
 		#まだ空きはない！！

   end
   p record2
	m=0
	k=0
	l=0
	record3=record2

   if (@patern == 1)
	for i in 0..18
		for j in 0..23
			if(record2[i][j] == "1")
				 record3[k][m]=@number[l]
			 l+=1

			else record3[k][m]=record2[i][j]

			end
				if(m ==23)
				m=0
				k+=1
				else
				m+=1
				end

		end
	  end
     elsif (@patern == 0)
      #縦
	let = @count/18
for i in 0..23
	for j in 0..6
		if(j<=let)
			if(record2[j][i] == "1")
				record3[m][k]=@number[l]
		 		l+=1

			else record3[m][k]=record2[j][i]

			end

			if(m ==6)
			m=0
			k+=1
			else
			m+=1
			end

		else
			record3[m][k]=nil
			if(m==6)
				m=0
				k+=1
			else
				m=m+1
			end
		end
	end

end



     elsif(@patern == 2)

     let=count/18
for i in 0..18
	for j in 0..6
		if(i<=let)
			if(record2[i][j] == "1")
				record3[k][m]=@number[l]
		 		l+=1

			else record3[k][m]=record2[i][j]

			end
				if(m ==6)
				m=0
				k+=1
				else
				m+=1
				end
		else
			record3[k][m]=nil
			if(m==6)
				m=0
				k+=1
			else
				m=m+1
			end
		end
	end

end

k=0
m=9
for i in 0..18
	for j in 9..13
		if(i<=let)
			if(record2[i][j] == "1")
				record3[k][m]=@number[l]
		 		l+=1

			else record3[k][m]=record2[i][j]

			end
			if(m ==13)
			m=9
			k+=1
			else
			m=m+1
			end
		else
		record3[k][m]=nil
			if(m==13)
			m=9
			k+=1
			else
			m=m+1
			end
		end
	end

end

k=0
m=16
for i in 0..18
	for j in 16..23
		if(i<=let)
			if(record2[i][j] == "1")
				record3[k][m]=@number[l]
		 		l+=1

			else record3[k][m]=record2[i][j]

			end
			if(m ==23)
			m=16
			k+=1
			else
			m=m+1
			end
		else
		record3[k][m]=nil
			if(m==23)
			m=16
			k+=1
			else
			m=m+1
			end
		end
	end

end








     end


p record3
	s = "教卓"
	CSV.open("#{@room_number}.csv", "wb") do |csv|
	# encoding: Shift_JIS
  	 csv << ["","","","","","","","","","","","","#{s.encode("Shift_JIS","UTF-8")}"]
  	 csv << [""]
	j=0
			for i in 0..18

			if(record3[i][0]==nil && record3[i][1]==nil && record3[i][2]==nil && record3[i][3]==nil && record3[i][4]==nil && record3[i][5]==nil && record3[i][6]==nil)
			csv<<["","#{record3[i][0]}","#{record3[i][1]}","#{record3[i][2]}","#{record3[i][3]}","#{record3[i][4]}","#{record3[i][5]}","#{record3[i][6]}","#{record3[i][7]}","#{record3[i][8]}","#{record3[i][9]}","#{record3[i][10]}","#{record3[i][11]}","#{record3[i][12]}","#{record3[i][13]}","#{record3[i][14]}","#{record3[i][15]}","#{record3[i][16]}","#{record3[i][17]}","#{record3[i][18]}","#{record3[i][19]}","#{record3[i][20]}","#{record3[i][21]}","#{record3[i][22]}","#{record3[i][23]}"]

			else
			csv<<["#{j+1}","#{record3[i][0]}","#{record3[i][1]}","#{record3[i][2]}","#{record3[i][3]}","#{record3[i][4]}","#{record3[i][5]}","#{record3[i][6]}","#{record3[i][7]}","#{record3[i][8]}","#{record3[i][9]}","#{record3[i][10]}","#{record3[i][11]}","#{record3[i][12]}","#{record3[i][13]}","#{record3[i][14]}","#{record3[i][15]}","#{record3[i][16]}","#{record3[i][17]}","#{record3[i][18]}","#{record3[i][19]}","#{record3[i][20]}","#{record3[i][21]}","#{record3[i][22]}","#{record3[i][23]}"]
			j+=1
			end
		end
	end

   end



   def B205()
    record3 = 0
    if(@space==0)
    #あけない
     record2 =[["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, nil], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, nil], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil,nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"],["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, nil], ["1", "1", "1", "1", "1", nil,nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil,nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"], ["1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1", "1", "1", "1", "1", nil, nil, "1"]]
    elsif(@space == 1)
    #あける
     record2 =[["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, nil], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, nil], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil,nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, nil], ["1", nil, "1", nil, "1", nil,nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil], [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil,nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"], ["1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1", nil, "1", nil, "1", nil, nil, "1"]]
	end
	p record2
	record3 = record2
	k = 0
	l = 0
	m = 0




	if(@patern == 0)
		    #縦
	    for i in 0..21
    for j in 0..16
        if (record2[j][i] == "1")
            record3[k][l] = @number[m]
            m += 1
        else
            record3[k][l] = record2[j][i]
        end

        if (k == 16)
            k = 0
            l += 1
        else
            k += 1
        end
    end









      end
      end

     if(@patern == 1)
       #横
       for i in 0..16
    for j in 0..21
        if (record2[i][j] == "1")
            record3[k][l] = @number[m]
            m += 1
        else
            record3[k][l] = record2[i][j]
        end

        if (l == 21)
            k += 1
            l = 0
        else
            l += 1
        end
    end
end

       end

      if(@patern == 2)
        #じぐ
        for i in 0..16
    for j in 0..6
        if (record2[i][j] == "1")
            record3[k][l] = @number[m]
            m += 1
        else
            record3[k][l] = record2[i][j]
        end
        if (l == 6)
            k += 1
            l = 0
        else
            l += 1
        end
    end
end

k = 0
l = 7
for i in 0..16
    for j in 7..13
        if (record2[i][j] == "1")
            record3[k][l] = @number[m]
            m += 1
            else
            record3[k][l] = record2[i][j]
        end
        if (l == 13)
            k += 1
            l = 7
            else
            l += 1
        end
    end
end

k = 0
l = 14
for i in 0..16
    for j in 14..21
        if (record2[i][j] == "1")
            record3[k][l] = @number[m]
            m += 1
            else
            record3[k][l] = record2[i][j]
        end
        if (l == 21)
            k += 1
            l = 14
        else
            l += 1
        end
    end
end


       end

CSV.open("b205.csv", "wb") do |csv|
    #encoding: Shirt_JIS
    s ="教卓"
    csv << ["","","","","","","","","","","#{s.encode("Shift_JIS", "UTF-8")}"]
    csv << [""]
    j = 0
    for i in 0..16
        if (record3[i][0] == nil)
            csv << [""]
        else
            csv << ["#{j+1}","#{record3[i][0]}","#{record3[i][1]}","#{record3[i][2]}","#{record3[i][3]}","#{record3[i][4]}","#{record3[i][5]}","#{record3[i][6]}","#{record3[i][7]}","#{record3[i][8]}","#{record3[i][9]}","#{record3[i][10]}","#{record3[i][11]}","#{record3[i][12]}","#{record3[i][13]}","#{record3[i][14]}","#{record3[i][15]}","#{record3[i][16]}","#{record3[i][17]}","#{record3[i][18]}","#{record3[i][19]}","#{record3[i][20]}","#{record3[i][21]}"]
            j += 1
        end
    end
end



end
 end

class File2
 @student_number = []
 @student_name = []
 @number
 @filename

 def initialize(file_name)
  @filename = file_name

 end

  def Getarray()

  tmp = Array::new

  open(@filename) {|file|
    while l = file.gets
      r = Test::new(l)
      tmp << {"gakuseki"=>r.gakuseki, "name"=>r.name}
    end
  }
  #そーと
  tmp.sort! {|a, b| a["gakuseki"] <=> b["gakuseki"]}
  i = 0
  st_num = []
  st_name = []
  tmp.each{|h|

   st_num[i] = h['gakuseki']
   st_name[i] = h['name']
   i  = i + 1
   @count = i
  }
  @student_number = st_num
  @student_name = st_name
  @number = i
 end

 def GetName()
  return @student_name
  end

 def GetNum()
  return @student_number
 end
 def GetCount()
  return @number
 end
 end



class Test
  def initialize(record)
    @record = record
  end
  def gakuseki
    @record[2..9]
  end
  def name
    @record[11..25]
  end
end








require 'tk'
patern = 1
filer = 0
a =0
i = 0

Tk.root.title('座席配置システム')
$room_name = nil
#! ruby -Ks
# coding: windows-31j
# ファイル名 Tkme01.rb
STDOUT.sync = true

def order(item,room)
$room_name = room
Tk.messageBox("title" => "選択内容",
  "message" => "メニュー選択: " + item)

end

spec = [
	[["教室選択▼"],
	["B202", proc { order("”B202”指定",0) }],
	["B205", proc { order("”B205”指定",1) }],
	["B302", proc { order("”B302”指定",2) }],
	["B303", proc { order("”B303”指定",3) }],
	["C103", proc { order("”C103”指定",4) }],
	["C104", proc { order("”C104”指定",5) }],
	],

       ]

TkMenubar.new(nil, spec) do
  tearoff(false)
  pack("anchor"=>"nw","padx"=>10,"pady"=>10)
end


 #option1 = TkVariable.new
 #option2 = TkVariable.new
 #f1 = TkFrame.new.pack('side'=>'top','fill'=>'x')
 #f2 = TkFrame.new.pack('side'=>'left')


 b1 = TkButton.new('text' => '登録リスト選択').pack("anchor"=>"w","padx"=>10)
b1.command {
  file = Tk.getOpenFile({'title' => 'ファイル選択',})
  if file != ''
  filer = file
      Tk.messageBox('message' => file + 'を選択しました。')
  else
    Tk.messageBox('message' => '選択なし。')
  end


  }

v = TkVariable.new

cb = TkCheckButton.new {
  text "席を空ける"

  variable v
  deselect
   command{if v == 0
              a =0
           else
            a = 1
           end
           i = i + 1        }
  pack('anchor' => 'ne')
}




txt02 = "縦"
txt03 = "横"
txt04 = "ジグザグ"



learning = TkVariable.new("左の前から並べます")
TkLabel.new {
	textvariable( learning )
	pack
}
TkRadioButton.new do         #ラジオボタン表示1
	text( txt02 )
	value( "左から順に縦に並べます" )
	variable( learning )
	command{
	 patern = 0
	}
	pack
end
TkRadioButton.new do         #ラジオボタン表示2
	text( txt03 )
	value("左の前から並べます")
	variable( learning )
	command{
	 patern = 1
	}
	pack
end
TkRadioButton.new do         #ラジオボタン表示3
	text( txt04 )
	value("左からジグザグに並べます")
	variable( learning )
	command{
	 patern = 2
	}
	pack
end


      b3=TkButton.new('text'=>'終了').pack('side'=>'right')

     b3.command {
       proc(exit)
       }

  b2=TkButton.new('text'=>'実行').pack('side'=>'right')

 b2.command {

  if filer != 0 && $room_name != nil
     Tk.messageBox('message' => '受理しました.')

it = File2.new(filer)
it.Getarray()

name = it.GetName
number = it.GetNum
count = it.GetCount
room_number = $room_name
p room_number
p number
j = Setup.new($room_name,number,patern,a,count)
j.judge()

 b2.command
  else
    Tk.messageBox('message' => '選択しなおしてください')

  end
 }





Tk.mainloop
