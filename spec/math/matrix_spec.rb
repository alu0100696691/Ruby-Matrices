require "matrix.rb"

describe Matrix_ do
    before :all do
        A = Matrix_.new("../../input/matrix_a")
        B = Matrix_.new("../../input/matrix_b")
    end
    
    it 'existe una clase Matrix' do
        A.instance_of?(Matrix_) == true
    end
    
    it 'No se ha cargado los datos del fichero al objeto Matrix' do
        A.mat.should be_empty
    end

    it 'Se han cargado los datos a la clase' do
        A.mat.empty? == false
    end

    it 'Se muestra correctamente una matriz' do
        A.instance_of?(print_matrix) == true
    end

end

