require 'test_helper'

class CadastrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro = cadastros(:one)
  end

  test "should get index" do
    get cadastros_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_url
    assert_response :success
  end

  test "should create cadastro" do
    assert_difference('Cadastro.count') do
      post cadastros_url, params: { cadastro: { cpf: @cadastro.cpf, data_cadastro: @cadastro.data_cadastro, local: @cadastro.local, nome: @cadastro.nome, parte_id: @cadastro.parte_id, telefone: @cadastro.telefone, user_id: @cadastro.user_id, visualizado: @cadastro.visualizado } }
    end

    assert_redirected_to cadastro_url(Cadastro.last)
  end

  test "should show cadastro" do
    get cadastro_url(@cadastro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_url(@cadastro)
    assert_response :success
  end

  test "should update cadastro" do
    patch cadastro_url(@cadastro), params: { cadastro: { cpf: @cadastro.cpf, data_cadastro: @cadastro.data_cadastro, local: @cadastro.local, nome: @cadastro.nome, parte_id: @cadastro.parte_id, telefone: @cadastro.telefone, user_id: @cadastro.user_id, visualizado: @cadastro.visualizado } }
    assert_redirected_to cadastro_url(@cadastro)
  end

  test "should destroy cadastro" do
    assert_difference('Cadastro.count', -1) do
      delete cadastro_url(@cadastro)
    end

    assert_redirected_to cadastros_url
  end
end
