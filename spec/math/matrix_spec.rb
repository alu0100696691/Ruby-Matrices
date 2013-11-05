require "matrix.rb"

describe Matrix_T do
    before :all do
        A = Matrix_T.new("input/matrix_a")
        B = Matrix_T.new("input/matrix_b")
    end
    
    it 'existe una clase Matrix' do
        A.instance_of?(Matrix_T) == true
    end
    
    it 'No se ha cargado los datos del fichero al objeto Matrix_T' do
        A.mat.should eq(0)
    end

    it 'Se han cargado los datos a la clase' do
        A.read_matrix
        A.mat.should be_kind_of(Array)
    end

    it 'Existe metodo imprimir matrix?' do
        A.should respond_to("print_matrix")
    end

    it 'Se muetra la matriz correctamente?' do
       #A.print_matrix.should eq("| { 1\t2 } , { 4\t5 } |")
    end

end

