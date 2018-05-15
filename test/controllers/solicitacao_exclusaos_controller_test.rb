require 'test_helper'

class SolicitacaoExclusaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitacao_exclusao = solicitacao_exclusaos(:one)
  end

  test "should get index" do
    get solicitacao_exclusaos_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitacao_exclusao_url
    assert_response :success
  end

  test "should create solicitacao_exclusao" do
    assert_difference('SolicitacaoExclusao.count') do
      post solicitacao_exclusaos_url, params: { solicitacao_exclusao: { cadastro_id: @solicitacao_exclusao.cadastro_id, informacoes: @solicitacao_exclusao.informacoes, usuario: @solicitacao_exclusao.usuario, visualizado: @solicitacao_exclusao.visualizado } }
    end

    assert_redirected_to solicitacao_exclusao_url(SolicitacaoExclusao.last)
  end

  test "should show solicitacao_exclusao" do
    get solicitacao_exclusao_url(@solicitacao_exclusao)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitacao_exclusao_url(@solicitacao_exclusao)
    assert_response :success
  end

  test "should update solicitacao_exclusao" do
    patch solicitacao_exclusao_url(@solicitacao_exclusao), params: { solicitacao_exclusao: { cadastro_id: @solicitacao_exclusao.cadastro_id, informacoes: @solicitacao_exclusao.informacoes, usuario: @solicitacao_exclusao.usuario, visualizado: @solicitacao_exclusao.visualizado } }
    assert_redirected_to solicitacao_exclusao_url(@solicitacao_exclusao)
  end

  test "should destroy solicitacao_exclusao" do
    assert_difference('SolicitacaoExclusao.count', -1) do
      delete solicitacao_exclusao_url(@solicitacao_exclusao)
    end

    assert_redirected_to solicitacao_exclusaos_url
  end
end
