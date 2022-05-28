require "test_helper"

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get usuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_url
    assert_response :success
  end

  test "should create usuario" do
    assert_difference("Usuario.count") do
      post usuarios_url, params: { usuario: { apellido: @usuario.apellido, direccion: @usuario.direccion, email: @usuario.email, login: @usuario.login, nombre: @usuario.nombre, or: @usuario.or, password: @usuario.password, telefono: @usuario.telefono } }
    end

    assert_redirected_to usuario_url(Usuario.last)
  end

  test "should show usuario" do
    get usuario_url(@usuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_url(@usuario)
    assert_response :success
  end

  test "should update usuario" do
    patch usuario_url(@usuario), params: { usuario: { apellido: @usuario.apellido, direccion: @usuario.direccion, email: @usuario.email, login: @usuario.login, nombre: @usuario.nombre, or: @usuario.or, password: @usuario.password, telefono: @usuario.telefono } }
    assert_redirected_to usuario_url(@usuario)
  end

  test "should destroy usuario" do
    assert_difference("Usuario.count", -1) do
      delete usuario_url(@usuario)
    end

    assert_redirected_to usuarios_url
  end
end
