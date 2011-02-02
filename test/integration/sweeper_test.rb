
require 'test/unit'
require "#{File.dirname(__FILE__)}/../../lib/sweeper"
begin; require 'ruby-debug'; rescue LoadError; end

class SweeperTest < Test::Unit::TestCase
  def setup
    @orig_dir = "#{File.dirname(__FILE__)}/songs"
    system("rm -rf /tmp/songs; cp -r #{@orig_dir} /tmp")
    @dir = "/tmp/songs"
    @found_many = "#{@dir}/1_001.mp3"
    @found_one = "#{@dir}/1_010.mp3"
    @not_found = "#{@dir}/1_003.mp3"
    @found = "#{@dir}/05 - you did it!.mp3"
    @s = Sweeper.new('dir' => @dir, 'genre' => true)
  end

  def test_lookup_basic
    assert_equal(
      {"artwork"=>"http://userserve-ak.last.fm/serve/300x300/32920981.jpg",
       "artist"=>"Photon Band",
       "title"=>"To Sing for You",
       "url"=>"http://www.last.fm/music/Photon+Band/_/To+Sing+for+You",
       "mbid"=>"f6381cea-7de8-4d9b-8aa3-3c769aaaeedd"},
      @s.lookup_basic(@found_many))
    assert_equal(
      {"artwork"=>"http://userserve-ak.last.fm/serve/300x300/9994857.jpg",
       "artist"=>"Tom Heyman",
       "title"=>"Sugar Man",
       "url"=>"http://www.last.fm/music/Tom+Heyman/_/Sugar+Man",
       "mbid"=>"1fd18925-990f-4f0c-bffd-8fccc1e778e8"},
      @s.lookup_basic(@found_one))
    assert_raises(Sweeper::Problem) do
      @s.lookup_basic(@not_found)
    end
  end

  def test_lookup_genre
    assert_equal(
      {"comment"=>
        "indie, indie rock, female vocalists, canadian, post-punk, dance-punk, dance punk, electronic, punk, rock",
       "genre"=>"Indie"},
      @s.lookup_genre(@s.lookup_basic(@found))
    )
    assert_equal(
      Sweeper::DEFAULT_GENRE,
      @s.lookup_genre({})
    )
  end

  def test_genre_weighting
    match, weight = @s.nearest_genre('psychedelic')
    assert_equal match, 'Psychadelic'
    assert(weight < 1)
    assert(weight > 0)
  end

  def test_read
    assert_equal({},
      @s.read(@found_many))
    assert_equal({},
      @s.read(@not_found))
  end

  def test_write
    @s.write(@found_many, @s.lookup(@found_many))
    assert_equal(
      @s.lookup(@found_many).except('artwork'),
      @s.read(@found_many))
  end

  def test_run
    @s.run
  end

end
