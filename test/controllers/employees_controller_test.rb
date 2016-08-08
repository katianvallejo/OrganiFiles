require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { afp: @employee.afp, direccion: @employee.direccion, eps: @employee.eps, estado: @employee.estado, fecha_ingreso: @employee.fecha_ingreso, fecha_retiro: @employee.fecha_retiro, no_id: @employee.no_id, primer_apellido: @employee.primer_apellido, primer_nombre: @employee.primer_nombre, salario: @employee.salario, segundo_apellido: @employee.segundo_apellido, segundo_nombre: @employee.segundo_nombre, telefono: @employee.telefono, tipo_id: @employee.tipo_id }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { afp: @employee.afp, direccion: @employee.direccion, eps: @employee.eps, estado: @employee.estado, fecha_ingreso: @employee.fecha_ingreso, fecha_retiro: @employee.fecha_retiro, no_id: @employee.no_id, primer_apellido: @employee.primer_apellido, primer_nombre: @employee.primer_nombre, salario: @employee.salario, segundo_apellido: @employee.segundo_apellido, segundo_nombre: @employee.segundo_nombre, telefono: @employee.telefono, tipo_id: @employee.tipo_id }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
