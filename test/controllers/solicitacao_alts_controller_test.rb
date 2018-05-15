require 'test_helper'

class SolicitacaoAltsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitacao_alt = solicitacao_alts(:one)
  end

  test "should get index" do
    get solicitacao_alts_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitacao_alt_url
    assert_response :success
  end

  test "should create solicitacao_alt" do
    assert_difference('SolicitacaoAlt.count') do
      post solicitacao_alts_url, params: { solicitacao_alt: { cadastro_id: @solicitacao_alt.cadastro_id, informacoes: @solicitacao_alt.informacoes, usuario: @solicitacao_alt.usuario, visualizado: @solicitacao_alt.visualizado } }
    end

    assert_redirected_to solicitacao_alt_url(SolicitacaoAlt.last)
  end

  test "should show solicitacao_alt" do
    get solicitacao_alt_url(@solicitacao_alt)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitacao_alt_url(@solicitacao_alt)
    assert_response :success
  end

  test "should update solicitacao_alt" do
    patch solicitacao_alt_url(@solicitacao_alt), params: { solicitacao_alt: { cadastro_id: @solicitacao_alt.cadastro_id, informacoes: @solicitacao_alt.informacoes, usuario: @solicitacao_alt.usuario, visualizado: @solicitacao_alt.visualizado } }
    assert_redirected_to solicitacao_alt_url(@solicitacao_alt)
  end

  test "should destroy solicitacao_alt" do
    assert_difference('SolicitacaoAlt.count', -1) do
      delete solicitacao_alt_url(@solicitacao_alt)
    end

    assert_redirected_to solicitacao_alts_url
  end
end
