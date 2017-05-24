require 'test_helper'

class ElementAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @element_attribute = element_attributes(:one)
  end

  test "should get index" do
    get element_attributes_url
    assert_response :success
  end

  test "should get new" do
    get new_element_attribute_url
    assert_response :success
  end

  test "should create element_attribute" do
    assert_difference('ElementAttribute.count') do
      post element_attributes_url, params: { element_attribute: { attribute_id: @element_attribute.attribute_id, element_id: @element_attribute.element_id } }
    end

    assert_redirected_to element_attribute_url(ElementAttribute.last)
  end

  test "should show element_attribute" do
    get element_attribute_url(@element_attribute)
    assert_response :success
  end

  test "should get edit" do
    get edit_element_attribute_url(@element_attribute)
    assert_response :success
  end

  test "should update element_attribute" do
    patch element_attribute_url(@element_attribute), params: { element_attribute: { attribute_id: @element_attribute.attribute_id, element_id: @element_attribute.element_id } }
    assert_redirected_to element_attribute_url(@element_attribute)
  end

  test "should destroy element_attribute" do
    assert_difference('ElementAttribute.count', -1) do
      delete element_attribute_url(@element_attribute)
    end

    assert_redirected_to element_attributes_url
  end
end
