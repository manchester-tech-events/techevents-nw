require 'omniauth-authic'
require 'minitest/autorun'
require 'mocha'

class TestMeme < MiniTest::Unit::TestCase
  def setup
    
    @client_id = '1234567890'
    @client_secret = 'qwertyuiop'
    @subdomain = 'dev-subdomain'
    @domain = "authic.com"
    @options = {:subdomain => @subdomain}
    @uid = 'lkjhgfdsa'
    @name = "Johnny Rotten"
    @email = "jrotten@email.com"
    @raw_info = {'id' => @uid, 'name' => @name, 'email' => @email}
    
    @request = stub('Request')
    @request.stubs(:params).returns({})
    @request.stubs(:cookies).returns({})
    @request.stubs(:env).returns({})

    args = [@client_id, @client_secret, @options].compact
    @strategy = OmniAuth::Strategies::Authic.new(nil, *args)
    @strategy.stubs(:request).returns(@request)
    @strategy.stubs(:raw_info).returns(@raw_info)
    
  end

  def test_that_subdomain_is_passed_in
    assert_equal @subdomain, @strategy.options[:subdomain]
  end
  
  def test_that_subdomain_is_passed_in
    assert_raises RuntimeError do
      @strategy.options[:subdomain] = ""
      @strategy.client
    end
  end

  def test_that_client_site_url_is_correct
    client = @strategy.client
    test_uri = URI.parse "http://#{@subdomain}.#{@domain}"
    actual_uri = URI.parse @strategy.options[:client_options][:site]
    assert_equal test_uri.host, actual_uri.host
  end
  
  def test_that_uid_is_returned
    assert_equal @uid, @strategy.uid
  end
  
  def test_that_extra_data_is_returned
    assert_equal @raw_info, @strategy.extra['raw_info']
  end
  
  def test_that_info_name_is_returned
    assert_equal @name, @strategy.info[:name]
  end
  
  def test_that_info_email_is_returned
    assert_equal @email, @strategy.info[:email]
  end
  
end