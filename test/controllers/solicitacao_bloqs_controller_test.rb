require 'test_helper'

class SolicitacaoBloqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitacao_bloq = solicitacao_bloqs(:one)
  end

  test "should get index" do
    get solicitacao_bloqs_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitacao_bloq_url
    assert_response :success
  end

  test "should create solicitacao_bloq" do
    assert_difference('SolicitacaoBloq.count') do
      post solicitacao_bloqs_url, params: { solicitacao_bloq: { cadastro_id: @solicitacao_bloq.cadastro_id, informacoes: @solicitacao_bloq.informacoes, usuario: @solicitacao_bloq.usuario, visualizado: @solicitacao_bloq.visualizado } }
    end

    assert_redirected_to solicitacao_bloq_url(SolicitacaoBloq.last)
  end

  test "should show solicitacao_bloq" do
    get solicitacao_bloq_url(@solicitacao_bloq)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitacao_bloq_url(@solicitacao_bloq)
    assert_response :success
  end

  test "should update solicitacao_bloq" do
    patch solicitacao_bloq_url(@solicitacao_bloq), params: { solicitacao_bloq: { cadastro_id: @solicitacao_bloq.cadastro_id, informacoes: @solicitacao_bloq.informacoes, usuario: @solicitacao_bloq.usuario, visualizado: @solicitacao_bloq.visualizado } }
    assert_redirected_to solicitacao_bloq_url(@solicitacao_bloq)
  end

  test "should destroy solicitacao_bloq" do
    assert_difference('SolicitacaoBloq.count', -1) do
      delete solicitacao_bloq_url(@solicitacao_bloq)
    end

    assert_redirected_to solicitacao_bloqs_url
  end
end
