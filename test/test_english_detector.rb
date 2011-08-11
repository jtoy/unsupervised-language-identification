# encoding: utf-8
require 'test/unit'
require_relative '../lib/unsupervised-language-detection'

class TestEnglishDetector < Test::Unit::TestCase
  def setup
  end
  
  def test_classify
    assert_equal false, 	UnsupervisedLanguageDetection.is_english_tweet?("ajá me arrumar pra ir no shopping :)")
    assert_equal true, 	UnsupervisedLanguageDetection.is_english_tweet?("hello world")    
    assert_equal false, 	UnsupervisedLanguageDetection.is_english_tweet?("coma estas?")
    assert_equal true, 	UnsupervisedLanguageDetection.is_english_tweet?("Justin...shirtless...wet...psh! im there ;)")
#    assert_equal false, 	UnsupervisedLanguageDetection.is_english_tweet?("bcbbd cdcbdcb ae")
    assert_equal false, 	UnsupervisedLanguageDetection.is_english_tweet?("你好吗")
    assert_equal false, 	UnsupervisedLanguageDetection.is_english_tweet?("どうも！京都人です。いろいろお得な情報をゲットしては得してます！みんなにも話せるお得情報は配信していこうかなと。よろしく！！") 
  end
end