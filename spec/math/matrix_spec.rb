require "matrix.rb"

describe Matrix do
    before :all do
        A = Matrix.new("../../input/matrix_a")
        B = Matrix.new("../../input/matrix_b")
    end
    
    it 'existe metodo para leer fichero' do
        A.read_matrix?.should == true
    end

end
