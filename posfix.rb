require_relative 'stack'
require_relative 'operands'

include Operands


def posfixa(infixa)

    stk = Stack.new
    psf= []

    for i in 0...infixa.length

        caracter = infixa[i]
        
        if caracter >= '0' && caracter <= '9'
            psf.push(caracter)
            
        elsif  isOperador(caracter)
         
            while !stk.is_empty? && prioridade(caracter, stk.peek?)
            
                t = stk.pop!
                psf.push(t)            
            end

            stk.push!(caracter)

        elsif caracter == '('
            stk.push!(caracter)
            
        elsif caracter == ')'
            while true 
                t = stk.pop!
                if t != '('
                    psf.push(t)
                else
                    break 
                end
            end 
        end    
    end
    
    while !stk.is_empty?
        psf.push(stk.pop!)
    end

    psf.join
end

#a = "3*5*4+2"
#b = "3+3-2"
#c = "(2+3)^5"

#result  = posfixa(c)
#puts result

