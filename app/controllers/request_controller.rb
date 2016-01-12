class RequestController < ApplicationController
  protect_from_forgery except: :kziel

  def splash
    @drinks = Drink.all
    if(cookies.signed[:user_id]&&Vote.find(cookies.signed[:user_id]))
      redirect_to list_path
    end
  end

  def list
    if(!cookies.signed[:user_id]||(!Vote.find(cookies.signed[:user_id])))
      redirect_to root_path
    else
      @drinks = Drink.all
      @votes = [];
      Vote.all.each do |vote|
        @votes.push({
          :name => vote.twitter_name,
          :drink => vote.drink_id
        })
      end
      @user = Vote.find(cookies.signed[:user_id])
      @guaranteed = false
    end
  end

  def submit
    if(!cookies.signed[:user_id]||(!Vote.find(cookies.signed[:user_id])))
      redirect_to root_path
    else
      vote = Vote.find(cookies.signed[:user_id])
      if(vote)
        vote.update(drink_id: params[:drink_id])
      else
        redirect_to error_path
      end
    end
  end

  def requests
    if(!cookies.signed[:user_id]||!Vote.find(cookies.signed[:user_id])||Vote.find(cookies.signed[:user_id]).twitter_name != "Kris Ziel (kziel)")
      redirect_to list_path
    end
  end

  def kziel
    new_client = Twitter::REST::Client.new
    new_client.consumer_key = ENV['CONSUMER_KEY']
    new_client.consumer_secret = ENV['CONSUMER_SECRET']
    new_client.access_token = ENV['ACCESS_TOKEN']
    new_client.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    headers['Access-Control-Allow-Origin'] = '*'
    count = params[:count] || 200
    since_id = params[:since_id] || 1
    exclude_replies = params[:exclude_replies] || false
    @timeline = new_client.user_timeline("kziel",{count: count, since_id:since_id, exclude_replies:exclude_replies, include_rts: true})
    render :json => @timeline, :callback => params[:callback]
  end

  def newdrinks
    drinks = Drink.create([
    {
  drinktype:'Singapore Airlines’ Unique Creations',
  name:'Sunrise Breezer',
  location:'',
  description:'A refreshing blend of sake and bitter lemon'
},
{
  drinktype:'Singapore Airlines’ Unique Creations',
  name:'Alspritizer',
  location:'',
  description:'A sparkling mix of vodka shaken with apple juice and 7-Up'
},
{
  drinktype:'Singapore Airlines’ Unique Creations',
  name:'Sweetness in Darkness',
  location:'',
  description:'A unique mix of red wine and a splash of Coke'
},
{
  drinktype:'Singapore Airlines’ Unique Creations',
  name:'Solitaire Dreams',
  location:'',
  description:'A cool concoction of run, pineapple juice, Sling mix with ginger ale'
},
{
  drinktype:'Singapore Airlines’ Unique Creations',
  name:'Vodka Flush',
  location:'',
  description:'A tantalising drink of vodka, apple juice, and bitter lemon, topped with 7-Up'
},
{
  drinktype:'All-Time Favorites',
  name:'Dry Martini',
  location:'',
  description:'A classic mix of gin and dry vermouth stirred over ice, garnished with olive'
},
{
      drinktype:'All-Time Favorites',
      name:'Screwdriver',
      location:'',
      description:'A classic concoction of vodka and orange juice'
    },
    {
      drinktype:'Spirits',
      name:'Macallan 12-Year-Old Single Malt Whisky',
      location:'',
      description:'*99.1989% chance this drink will lose the drink "lottery".* A time-honored distillation process and the traditional skills of master craftsmen create a satisfyingly complex single malt characterized by a full-bodied flavor with hints of dried fruit and spice.'
    },
    {
      drinktype:'Spirits',
      name:'Johnnie Walker Blue Label',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Jack Daniel’s Tennessee Whiskey',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Bombay Sapphire Gin',
      location:'',
      description:'Too simple to waste a drink on. amirite?'
    },
    {
      drinktype:'Spirits',
      name:'Belvedere Vodka',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Bacardi Superior',
      location:'',
      description:''
    },
    {
      drinktype:'Spirits',
      name:'Momono Shizuku Sake',
      location:'',
      description:'A premium Junmai-Daiginjo sake from Kyoyo prefecture, named after a haiku by the famous poet Matsuo Basho'
    },
    {
      drinktype:'Liqueurs',
      name:'Grand Marnier',
      location:'',
      description:''
    },
    {
      drinktype:'Liqueurs',
      name:'Bailey’s Original Irish Cream',
      location:'',
      description:''
    }])
  end

end
