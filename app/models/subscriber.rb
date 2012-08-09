class Subscriber < Struct.new(:subscription_store)
  def subscribe_to(feed_url)
    unless subscribed_to?(feed_url)
      subscription_store.create_subscription(feed_url)
    end
  end

  def subscribed_to?(feed_url)
    !subscription_store.get_subscription_for(feed_url).nil?
  end
end

