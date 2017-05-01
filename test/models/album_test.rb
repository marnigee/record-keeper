require_relative '../test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "should not save album without title" do
    album = Album.new
    album.artist = 'Album Artist'
    album.year = 2016
    assert_not album.save
  end

  test "should not save album without artist" do
    album = Album.new
    album.title = 'Album Title'
    album.year = 2016
    assert_not album.save
  end

  test "should not save album without year" do
    album = Album.new
    album.title = 'Album Title'
    album.artist = 'Album Artist'
    assert_not album.save
  end

  test "should not save album without condition" do
    album = Album.new
    album.title = 'Album Title'
    album.artist = 'Album Artist'
    album.year = 2016
    assert_not album.save
  end
end
