# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Api.Ordering do
  @moduledoc """
  API calls for all endpoints tagged `Ordering`.
  """

  alias Voxbone.Connection
  import Voxbone.RequestBuilder

  @doc """
  Retrieve information about your account balance.
  You may need to check your account balance before checking out your carts. This is not mandatory, but checking out a cart with an empty balance will return an error. Note that you can set up a threshold for automatic refills of your business account. This threshold is configurable both on the web portal and the API. We recommend that this automatic refill parameter is set to true, especially when using the API for ordering.

  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.AccountBalanceResponse{}} on success
  {:error, info} on failure
  """
  @spec account_balance(Tesla.Env.client(), keyword()) ::
          {:ok, Voxbone.Model.AccountBalanceResponse.t()} | {:error, Tesla.Env.t()}
  def account_balance(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/ordering/accountbalance")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.AccountBalanceResponse{})
  end

  @doc """
  Allows you to add items (orderProducts) to a specific cart before checking out the cart. Different product types (DID, CAPACITY or CREDIT_PACKAGE) can be added into one single cart.
  However, only one product can be added per addToCart request. The system will automatically create a new orderProductId (or add the items to an existing one) for the items added to your cart. You can retrieve the orderProductId with the listCart method. When you order capacity you should update your capacity forecast (in the portal). The delivery of capacity is not in real-time and requires validation from our operation team.

  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - cart_identifier (integer()): Identifies the cart and is returned by the createCart method or can be retrieved with the listCart method.
  - opts (KeywordList): [optional] Optional parameters
    - :body (AddToCartRequest): 

  ## Returns

  {:ok, %Voxbone.Model.AddToCartResponse{}} on success
  {:error, info} on failure
  """
  @spec add_to_cart(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, Voxbone.Model.AddToCartResponse.t()} | {:error, Tesla.Env.t()}
  def add_to_cart(connection, cart_identifier, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/ordering/cart/#{cart_identifier}/product")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.AddToCartResponse{})
  end

  @doc """
  Allows you to cancel one or multiple DIDs.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (CancelDidsRequest): 

  ## Returns

  {:ok, %Voxbone.Model.CancelDidsResponse{}} on success
  {:error, info} on failure
  """
  @spec cancel_dids(Tesla.Env.client(), keyword()) ::
          {:ok, Voxbone.Model.CancelDidsResponse.t()} | {:error, Tesla.Env.t()}
  def cancel_dids(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/ordering/cancel")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.CancelDidsResponse{})
  end

  @doc """
  Allows you to checkout a cart and place an order for all the products contained in the cart. You can then retrieve your orders using the listOrder method.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - cart_identifier (integer()): The identifier of your cart which is formed of a fixed string such as &#39;apiv3:60677:&#39; and an ID which is incremented each time a new cart is created.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.CheckoutCartResponse{}} on success
  {:error, info} on failure
  """
  @spec checkout_cart(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, Voxbone.Model.CheckoutCartResponse.t()} | {:error, Tesla.Env.t()}
  def checkout_cart(connection, cart_identifier, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/ordering/cart/#{cart_identifier}/checkout")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.CheckoutCartResponse{})
  end

  @doc """
  Allows you to create a cart.
  The creation of a cart depends on your own business logic, but you&#39;ll always need to create at least one cart to place an order (checkoutCart). You can place multiple orders per cart or you can create separate carts for each order. Note that different product types (DID, Capacity or prepaid credits) can be added into one single cart.

  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :body (CreateCartRequest): 

  ## Returns

  {:ok, %Voxbone.Model.CreateCartResponse{}} on success
  {:error, info} on failure
  """
  @spec create_cart(Tesla.Env.client(), keyword()) ::
          {:ok, Voxbone.Model.CreateCartResponse.t()} | {:error, Tesla.Env.t()}
  def create_cart(connection, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:put)
    |> url("/ordering/cart")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.CreateCartResponse{})
  end

  @doc """
  Allows you to delete a cart and all its content from your list of carts.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - cart_identifier (integer()): The identifier of the cart.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.DeleteCartResponse{}} on success
  {:error, info} on failure
  """
  @spec delete_cart(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, Voxbone.Model.DeleteCartResponse.t()} | {:error, Tesla.Env.t()}
  def delete_cart(connection, cart_identifier, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/ordering/cart/#{cart_identifier}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.DeleteCartResponse{})
  end

  @doc """
  Allows you to retrieve your cart attributes (cartIdentifier, customerReference, description) and its content (list of products - orderProducts - that are currently in the cart).


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - cart_identifier (integer()): Identifies the cart and is returned by the createCart method or can be retrieved with the listCart method.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.ListCartResponse{}} on success
  {:error, info} on failure
  """
  @spec get_cart(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, Voxbone.Model.ListCartResponse.t()} | {:error, Tesla.Env.t()}
  def get_cart(connection, cart_identifier, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/ordering/cart/#{cart_identifier}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListCartResponse{})
  end

  @doc """
  Allows you to list your carts and retrieve their attributes (cartIdentifier, customerReference, description), and their content (list of products - orderProducts - that are currently in the cart).


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - page_number (integer()): The page number, starting at 0.
  - page_size (integer()): The page size (max number of entities that are displayed in the response).
  - opts (KeywordList): [optional] Optional parameters
    - :cart_identifier (integer()): Identifies the cart and is returned by the createCart method or can be retrieved with the listCart method.
    - :reference (String.t): The reference of the cart.

  ## Returns

  {:ok, %Voxbone.Model.ListCartResponse{}} on success
  {:error, info} on failure
  """
  @spec list_cart(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Voxbone.Model.ListCartResponse.t()} | {:error, Tesla.Env.t()}
  def list_cart(connection, page_number, page_size, opts \\ []) do
    optional_params = %{
      :cartIdentifier => :query,
      :reference => :query
    }

    %{}
    |> method(:get)
    |> url("/ordering/cart")
    |> add_param(:query, :pageNumber, page_number)
    |> add_param(:query, :pageSize, page_size)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListCartResponse{})
  end

  @doc """
  Allows you to get a list of your orders (after a cart has been checked out) and their status.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - page_number (integer()): The page number, starting at 0.
  - page_size (integer()): The page size (max number of entities that are displayed in the response).
  - opts (KeywordList): [optional] Optional parameters
    - :reference (String.t): The order reference.
    - :status (String.t): The status of the order.
    - :date_from (String.t): The date from which you want to filter your listed orders based on the timestamp for the order&#39;s creation date (dateAdded) in the format YYYY-MM-DD HH:MM:SS
    - :date_to (String.t): The date until which you want to filter your listed orders based on the timestamp for the cart&#39;s creation date (dateAdded) in the format YYYY-MM-DD HH:MM:SS.

  ## Returns

  {:ok, %Voxbone.Model.ListOrderResponse{}} on success
  {:error, info} on failure
  """
  @spec list_order(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Voxbone.Model.ListOrderResponse.t()} | {:error, Tesla.Env.t()}
  def list_order(connection, page_number, page_size, opts \\ []) do
    optional_params = %{
      :reference => :query,
      :status => :query,
      :dateFrom => :query,
      :dateTo => :query
    }

    %{}
    |> method(:get)
    |> url("/ordering/order")
    |> add_param(:query, :pageNumber, page_number)
    |> add_param(:query, :pageSize, page_size)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListOrderResponse{})
  end

  @doc """
  Remove a product from your cart, or change the ordered quantity.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - body (RemoveFromCartRequest): 
  - cart_identifier (integer()): The identifier of the cart.
  - order_product_id (integer()): The identifier of the product.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.RemoveFromCartResponse{}} on success
  {:error, info} on failure
  """
  @spec remove_from_cart(
          Tesla.Env.client(),
          Voxbone.Model.RemoveFromCartRequest.t(),
          integer(),
          integer(),
          keyword()
        ) :: {:ok, Voxbone.Model.RemoveFromCartResponse.t()} | {:error, Tesla.Env.t()}
  def remove_from_cart(connection, body, cart_identifier, order_product_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/ordering/cart/#{cart_identifier}/product/#{order_product_id}")
    |> add_param(:body, :body, body)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.RemoveFromCartResponse{})
  end
end