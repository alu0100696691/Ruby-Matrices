require "matrix.rb"

describe Matrix do
    before :all do
        A = Matrix.new("matrix_a")
        B = Matrix.new("matrix_b")
    end

 it 'existe metodo para leer fichero' do
     Matrix.new("matrix_a").read_matrix?.should == true
 end

end
