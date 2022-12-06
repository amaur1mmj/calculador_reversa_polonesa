module Operands

    def isOperador(o)
        return true if o =='+' || o =='-' || o =='/' || o =='*' || o == '^'
        return false
        
    end
    
    def operation(op, v1, v2)

        case op 
        when '+'
            return v1 + v2
        when '-'
            return v1 - v2
        when '*'
            return v1 * v2
        when '^'
            return v1 ** v2
        else
            false
        end

    end
    
    def prioridade(c,t)
        """Verifica a prioridade entre os operandos"""
        if c == '^'
            pc = 4
        elsif c == '*' or c == '/'
            pc = 2
        elsif c == '+' or c == '-'
            pc = 1
        else
            pc = 4
        end

        if t == '^'
            pt = 3
        elsif t == '*' or t == '/'
            pt = 2
        elsif t == '+' or t == '-'
            pt = 1
        else
            pt = 0
        end

        return pc <= pt
    end



end