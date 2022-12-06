require_relative "stack"
require_relative "posfix"

include Operands


def valid_calc_posfix(expressao)

    stk = Stack.new

    for i in 0...expressao.length
        caracter = expressao[i]

        if caracter >= "0" and caracter <= "9"
            stk.push!(caracter)
        else
            op2 = stk.pop!
            op1 = stk.pop!

            valor = operation(caracter, op1.to_f, op2.to_f)

            if valor 
                stk.push!(valor)
            else
                return "Operador inválido!"
            end
        end
    end
    result  = stk.pop!

    if stk.is_empty?
        return result
    else
        return "Expressão invalida!"
    end


end


#c = "(2+3)^5"

#psf = posfixa(c)

#r = valid_calc_posfix(psf)

#p r


