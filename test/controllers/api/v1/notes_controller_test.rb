require "test_helper"

class Api::V1::NotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note = notes(:one)
  end

  test "should get index" do
    get api_v1_notes_url, as: :json
    assert_response :success
  end

  test "should show note" do
    get api_v1_note_url(@note), as: :json
    assert_response :success
  end

  test "should create note" do
    assert_difference("Note.count") do
      post api_v1_notes_url, params: { note: { body: "New Note", archived: false, category_id: categories(:one).id } }, as: :json
    end

    assert_response :created
  end

  test "should update note" do
    patch api_v1_note_url(@note), params: { note: { body: "Updated Body" } }, as: :json
    assert_response :success
  end

  test "should destroy note" do
    assert_difference("Note.count", -1) do
      delete api_v1_note_url(@note), as: :json
    end

    assert_response :no_content
  end
end
