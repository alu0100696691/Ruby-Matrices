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

    it 'Se han cargado los datos al objeto A' do
        A.read_matrix
        A.mat.should be_kind_of(Array)
    end

    it 'Se han cargado los datos al objeto B' do
        B.read_matrix
        B.mat.should be_kind_of(Array)
    end
    
    it 'Existe metodo imprimir matrix?' do
        A.should respond_to("print_matrix")
    end

    it 'Se muetra la matriz correctamente?' do
       A.print_matrix.should eq(nil)
    end
    
    it 'Se convierte la matriz correctamente?' do
        A.to_s.should eq("| { 1.0\t2.0\t } , { 4.0\t5.0\t } , |")
    end
    
    it 'suma de matrices, existe metodo?' do
        A.should respond_to("+")
    end

    it 'suma de matrices, suma correctamente?' do
        (A+B).to_s.should eq("| { 2.0\t4.0\t } , { 7.0\t9.0\t } , |")
    end

    it 'multiplicar matrices, existe metodo?' do
        A.should respond_to("*")
    end

    it 'multiplicar matrices, multiplica correctamente?' do
        (A*B).to_s.should eq("| { 12.0\t120.0\t } , { 27.0\t270.0\t } , |")
    end

end

