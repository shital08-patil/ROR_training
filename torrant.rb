
def rgp()
    b= true
    bill=0
    while(b)
        puts "---------Enter units used in KW---------"
        units=gets.to_i
        if units<=15
            units*=24
            bill1=50*3.2
            bill2=150*3.95
            if units<=50
                bill+=units*3.2
                b=false
            elsif units>50 and units <200
                units-=50
                bill=bill1+units*3.95
                b=false
            else
                units-=200
                bill=bill1+bill2+(units*5)
                b=false
            end

            c=true
            bill*=30
            while(c)
                puts "Enter phase\n 1. Single Phase \n 2. Three Phase "
                phase=gets.to_i
                if phase==1
                    bill+=25
                    c=false
                elsif phase==2
                    bill+=65
                    c=false
                else
                    puts "Please enter correct choice for selecting phase\n"
                end
                puts "----------------Bill is #{bill} Rs"
            end
        else
            puts "Please enter units less than or equal to 15KW"
        end
    end        
end

def bpl()
    b= true
    bill=0
    while(b)
        puts "---------Enter units used in KW---------"
        units=gets.to_i
        if units<=15
            units*=24
            bill1=50*1.5
            bill2=150*3.95
            if units<=50
                bill+=units*1.5
                b=false
            elsif units>50 and units <200
                units-=50
                bill=bill1+units*3.95
                b=false
            else
                units-=200
                bill=bill1+bill2+(units*5)
                b=false
            end
            bill*=30
            bill+=5
            puts "----------------Bill is #{bill} Rs"

        else
            puts "Please enter units less than or equal to 15KW"
        end
    end
end


def glp()
    b= true
    bill=0
    puts "---------Enter units used in KW---------"
    units=gets.to_i
    units*=24
    bill1=200*4.1
    if units<=200
        bill+=units*4.1
    elsif units>200
        units-=200
        bill=bill1+units*4.8
    end  
         
    bill*=30
    c=true
    while(c)
        puts "Enter phase\n 1. Single Phase \n 2. Three Phase "
        phase=gets.to_i
        if phase==1
            bill+=30
            c=false
        elsif phase==2
            bill+=70
            c=false
        else
            puts "Please enter correct choice for selecting phase\n"
        end
        puts "--------------Bill is #{bill} Rs"
    end
end

def nrgp()
    b= true
    while(b)
        puts "---------Enter units used in KW---------"
        units=gets.to_i
        if units<=5
            bill=(units*24*4.6*30)+70
            b=false
        elsif units>5 and units<=15
            bill=(units*30*24*4.6)+90
            b=false
        else
            puts "Please enter units less than or equal to 15KW"
        end
    end
    puts "---------------Bill is #{bill} Rs"
        
end


def call()
    b=true
    while(b)
        puts "--------Select your Category for calculating tariff----------"
        puts "1 RGP"
        puts "2 GLP"
        puts "3 NReGP\n"
        puts "---------Select Number in Menu to select your category---------"
        no=gets.to_i
        if no==1
            puts "-----------Select Sub Category :"
            puts "1. RGP"
            puts "2. BPL"
            sub=gets.to_i
            if sub==1
                rgp()
                b=false
            elsif sub==2
                bpl()
                b=false
            else
                puts " Enter correct choice"
            end
        elsif no==2
            glp()
            b=false
        elsif no==3
            nrgp()
            b=false
        else
            puts "------Please Enter correct choice------"
        end
    end

end

call()