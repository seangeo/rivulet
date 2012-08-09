require_relative "../../app/models/subscriber.rb"

describe Subscriber do
  let(:url) { 'http://example.com' }
  let(:store) { mock('subscription store') }
  let(:subscriber) { Subscriber.new(store) }

  it "adds new subscriptions to the subscription store" do
    store.stub!(:get_subscription_for)
    store.should_receive(:create_subscription).with(url).once
    subscriber.subscribe_to(url)
  end

  it "checks the subscription store for existing repositories" do
    store.should_receive(:get_subscription_for).with(url).and_return(mock('subscription'))
    subscriber.should be_subscribed_to(url)
  end

  it "doesn't add a subscription that already exists" do
    store.should_receive(:get_subscription_for).with(url).and_return(mock('subscription'))
    store.should_receive(:create_subscription).with(url).never
    subscriber.subscribe_to(url)
  end
end

