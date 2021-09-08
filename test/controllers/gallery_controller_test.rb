require 'test_helper'

class GalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get home_gallery" do
    get gallery_home_gallery_url
    assert_response :success
  end

end
