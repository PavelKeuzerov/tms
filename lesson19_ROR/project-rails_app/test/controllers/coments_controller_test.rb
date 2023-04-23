# frozen_string_literal: true

require 'test_helper'

class ComentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coment = coments(:one)
  end

  test 'should get index' do
    get coments_url, as: :json
    assert_response :success
  end

  test 'should create coment' do
    assert_difference('Coment.count') do
      post coments_url,
           params: { coment: { boor_id: @coment.boor_id, message: @coment.message, title: @coment.title, user_id: @coment.user_id } }, as: :json
    end

    assert_response :created
  end

  test 'should show coment' do
    get coment_url(@coment), as: :json
    assert_response :success
  end

  test 'should update coment' do
    patch coment_url(@coment),
          params: { coment: { boor_id: @coment.boor_id, message: @coment.message, title: @coment.title, user_id: @coment.user_id } }, as: :json
    assert_response :success
  end

  test 'should destroy coment' do
    assert_difference('Coment.count', -1) do
      delete coment_url(@coment), as: :json
    end

    assert_response :no_content
  end
end
