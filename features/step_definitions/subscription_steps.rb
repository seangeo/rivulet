Given /^I am the logged in user$/ do
  @user = Subscriber.new
end

When /^I subscribe to a feed$/ do
  @user.subscribe_to("http://example.com/index.rss")
end

Then /^it appears in my subscription list$/ do
  @user.should be_subscribed_to?("http://example.com/index.rss")
end

Given /^I am subscribed to the feed$/ do
  @subscription_count = @user.subscription_count
  @user.subscribe_to("http://example.com/index.rss")
end

Then /^my subscriptions don't change$/ do
  @subscription_count.should == @user.subscription_count
end

