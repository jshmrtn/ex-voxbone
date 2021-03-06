# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule Voxbone.Api.Inventory do
  @moduledoc """
  API calls for all endpoints tagged `Inventory`.
  """

  alias Voxbone.Connection
  import Voxbone.RequestBuilder

  @doc """
  Allows you to display details for a country available in the Voxbone coverage.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - country_code_a3 (String.t): The three letter identifier of the country.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.ListCountryResponse{}} on success
  {:error, info} on failure
  """
  @spec get_country(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Voxbone.Model.ListCountryResponse.t()} | {:error, Tesla.Env.t()}
  def get_country(connection, country_code_a3, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inventory/country/#{country_code_a3}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListCountryResponse{})
  end

  @doc """
  Allows you to search for countries available in the Voxbone coverage.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - page_number (integer()): The page number, starting at 0.
  - page_size (integer()): The page size (max number of entities that are displayed in the response).
  - opts (KeywordList): [optional] Optional parameters
    - :country_code_a3 (String.t): The country code for the DID in its ISO 3166-1 alpha-3 format (e.g. &#39;GBR&#39; for United Kingdom, &#39;USA&#39; for United States of America, &#39;BEL&#39; for Belgium, and special code &#39;WLD&#39; for iNum numbers).
    - :did_type (String.t): The type of DIDs (service) offered for the country.

  ## Returns

  {:ok, %Voxbone.Model.ListCountryResponse{}} on success
  {:error, info} on failure
  """
  @spec list_country(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Voxbone.Model.ListCountryResponse.t()} | {:error, Tesla.Env.t()}
  def list_country(connection, page_number, page_size, opts \\ []) do
    optional_params = %{
      :countryCodeA3 => :query,
      :didType => :query
    }

    %{}
    |> method(:get)
    |> url("/inventory/country")
    |> add_param(:query, :pageNumber, page_number)
    |> add_param(:query, :pageSize, page_size)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListCountryResponse{})
  end

  @doc """
  This method is used to retrieve the list of packages that are available for prepaid credits top-ups (e.g. $100 Prepaid Credits package which shows a value multiplied by 100: &#39;Price100&#x3D;10000&#39;).


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.ListCreditPackageResponse{}} on success
  {:error, info} on failure
  """
  @spec list_credit_package(Tesla.Env.client(), keyword()) ::
          {:ok, Voxbone.Model.ListCreditPackageResponse.t()} | {:error, Tesla.Env.t()}
  def list_credit_package(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inventory/creditpackage")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListCreditPackageResponse{})
  end

  @doc """
  This method allows you to search for DIDs within your own inventory. This method can be useful to get the current configuration of one or multiple DIDs.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - page_number (integer()): The page number, starting at 0.
  - page_size (integer()): The page size (max number of entities that are displayed in the response).
  - opts (KeywordList): [optional] Optional parameters
    - :did_ids ([integer()]): Can be specified to get detailed info about the corresponding DIDs. Note that you can specify multiple ids by repeating the query parameter.
    - :did_group_ids ([integer()]): Can be specified to filter your DIDs based on their location or any other info contained in the DID Group. Note that you can specify multiple ids by repeating the query parameter.
    - :e164_pattern (String.t): You can search a specific DID in your inventory with a specific pattern e.g. %25123 (number contains 123). %-sign needs to be escaped using %25
    - :regulation_address_id (integer()): This is an ID that you get when creating a regulation address. The DIDs can be filtered by the regulation address on which they are linked.
    - :voice_uri_id (integer()): The identifier of the voice uri the numbers are mapped to.
    - :fax_uri_id (integer()): The identifier of the fax uri the numbers are mapped to.
    - :sms_link_group_id (integer()): The identifier of the sms link group the numbers are mapped to.
    - :need_address_link (boolean()): A boolean flag indicating if the numbers need to be linked to an address for regulation purposes.
    - :service_type (String.t): This can be used if you want to filter by service type. The possible values are &#39;VOX800&#39; for toll-free numbers or &#39;VOXDID&#39; for geographic or national numbers.
    - :country_code_a3 (String.t): The country code for the DID in its ISO 3166-1 alpha-3 format (e.g. &#39;GBR&#39; for United Kingdom, &#39;USA&#39; for United States of America, &#39;BEL&#39; for Belgium, etc.).
    - :order_reference (String.t): Indicates which purchase order the DID was in. You can get a list of orders with the order details (date and status) in the ordering module using the listOrder method.
    - :porting_reference (String.t): The reference for the numbers&#39; porting request.
    - :delivery_id (integer()): The identifier of the pop the numbers are mapped to.
    - :sms_outbound (boolean()): Allows you to filter your DIDs that you have enabled for outbound SMS (the feature is only available for accounts that are registered for the SMS outbound service).
    - :web_rtc_enabled (boolean()): Indicates whether the DID is enabled for WebRTC use (the feature is only available for accounts that are registered for the WebRTC service).
    - :voxout_national_enabled (boolean()): Indicates whether the DID is enabled for voxoutNational use (the feature is only available for accounts that are registered for the voxoutNational service).
    - :voxout_international_enabled (boolean()): Indicates whether the DID is enabled for voxoutInternational use (the feature is only available for accounts that are registered for the voxoutInternational service).

  ## Returns

  {:ok, %Voxbone.Model.ListDidResponse{}} on success
  {:error, info} on failure
  """
  @spec list_did(Tesla.Env.client(), integer(), integer(), keyword()) ::
          {:ok, Voxbone.Model.ListDidResponse.t()} | {:error, Tesla.Env.t()}
  def list_did(connection, page_number, page_size, opts \\ []) do
    optional_params = %{
      :didIds => :query,
      :didGroupIds => :query,
      :e164Pattern => :query,
      :regulationAddressId => :query,
      :voiceUriId => :query,
      :faxUriId => :query,
      :smsLinkGroupId => :query,
      :needAddressLink => :query,
      :serviceType => :query,
      :countryCodeA3 => :query,
      :orderReference => :query,
      :portingReference => :query,
      :deliveryId => :query,
      :smsOutbound => :query,
      :webRtcEnabled => :query,
      :voxoutNationalEnabled => :query,
      :voxoutInternationalEnabled => :query
    }

    %{}
    |> method(:get)
    |> url("/inventory/did")
    |> add_param(:query, :pageNumber, page_number)
    |> add_param(:query, :pageSize, page_size)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListDidResponse{})
  end

  @doc """
  Allows you to retrieve the list of DID groups. A DID group can be defined as the smallest set of DIDs which is usually DIDs that share the same city or area code attributes. It is a method which is useful to get pricing info on a DID and to get didGroupIds which is a required parameter when placing a DID order.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - country_code_a3 (String.t): Indicates the country code of the DID group in its ISO 3166-1 alpha-3 format (e.g. &#39;GBR&#39; for United Kingdom, &#39;USA&#39; for United States of America, &#39;BEL&#39; for Belgium, etc.).
  - page_number (integer()): The page number, starting at 0.
  - page_size (integer()): The page size (max number of entities that are displayed in the response).
  - opts (KeywordList): [optional] Optional parameters
    - :did_group_ids ([integer()]): Can be used if you want information about specific DID groups. Note that you can specify multiple ids by repeating the query parameter.
    - :state_id (integer()): The numerical identifier for the didGroup&#39;s state. Please see the listState operation to retrieve a valid state identifier.
    - :city_name_pattern (String.t): A string pattern for the beginning of city name: &#39;New York%&#39; will return all New York DID groups. On the contrary, &#39;w York%&#39; will return none.
    - :rate_center (String.t): The rate center can be defined as a zone (which can be equivalent to a city or the area of a city) e.g. the rate center of &#39;NEW YORK CITY ZONE 1&#39; would be &#39;NWYRCYZN01&#39;. The rate center is a notion usually used in north America.
    - :area_code (String.t): The area code of the DID group (e.g. &#39;646&#39;).
    - :did_type (String.t): The type of DID.
    - :show_empty (String.t): Set to true if you want to show the didGroups with no stock currently available.
    - :feature_ids ([integer()]): Can be used if you want to list DID groups that support certain features such as VoxSMS or VoxFAX. (eg. 6 for VoxFAX, 25 for VoxSMS, 50 for Voice). Note that you can specify multiple features by repeating the query parameter.

  ## Returns

  {:ok, %Voxbone.Model.ListDidGroupResponse{}} on success
  {:error, info} on failure
  """
  @spec list_did_group(Tesla.Env.client(), String.t(), integer(), integer(), keyword()) ::
          {:ok, Voxbone.Model.ListDidGroupResponse.t()} | {:error, Tesla.Env.t()}
  def list_did_group(connection, country_code_a3, page_number, page_size, opts \\ []) do
    optional_params = %{
      :didGroupIds => :query,
      :stateId => :query,
      :cityNamePattern => :query,
      :rateCenter => :query,
      :areaCode => :query,
      :didType => :query,
      :showEmpty => :query,
      :featureIds => :query
    }

    %{}
    |> method(:get)
    |> url("/inventory/didgroup")
    |> add_param(:query, :countryCodeA3, country_code_a3)
    |> add_param(:query, :pageNumber, page_number)
    |> add_param(:query, :pageSize, page_size)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListDidGroupResponse{})
  end

  @doc """
  Allows you to retrieve the list of features (featureID, name and description) that DIDs can have such as VoxFAX or VoxSMS. This method will now also return Voice as a feature.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.ListFeatureResponse{}} on success
  {:error, info} on failure
  """
  @spec list_feature(Tesla.Env.client(), keyword()) ::
          {:ok, Voxbone.Model.ListFeatureResponse.t()} | {:error, Tesla.Env.t()}
  def list_feature(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inventory/feature")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListFeatureResponse{})
  end

  @doc """
  Allows you to get the list of restrictions per country in a text format.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - country_code_a3 (String.t): The country code for the DID in its ISO 3166-1 alpha-3 format (e.g. &#39;GBR&#39; for United Kingdom, &#39;USA&#39; for United States of America, &#39;BEL&#39; for Belgium, etc.).
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.ListRestrictionResponse{}} on success
  {:error, info} on failure
  """
  @spec list_restriction(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Voxbone.Model.ListRestrictionResponse.t()} | {:error, Tesla.Env.t()}
  def list_restriction(connection, country_code_a3, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inventory/country/#{country_code_a3}/restriction")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListRestrictionResponse{})
  end

  @doc """
  Allows you to get the list of states for a country that has states such as USA and CAN.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - country_code_a3 (String.t): It indicates the country code of the country in its ISO 3166-1 alpha-3 format. Note that only countryCodeA3 for countries that have states are valid values.
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.ListStateResponse{}} on success
  {:error, info} on failure
  """
  @spec list_state(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Voxbone.Model.ListStateResponse.t()} | {:error, Tesla.Env.t()}
  def list_state(connection, country_code_a3, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inventory/country/#{country_code_a3}/state")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListStateResponse{})
  end

  @doc """
  This method allows you to get the list of the trunks that are available in your account.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.ListTrunkResponse{}} on success
  {:error, info} on failure
  """
  @spec list_trunk(Tesla.Env.client(), keyword()) ::
          {:ok, Voxbone.Model.ListTrunkResponse.t()} | {:error, Tesla.Env.t()}
  def list_trunk(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inventory/trunk")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListTrunkResponse{})
  end

  @doc """
  Allows you to display all the zones currently configured in your account.


  ## Parameters

  - connection (Voxbone.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %Voxbone.Model.ListZoneResponse{}} on success
  {:error, info} on failure
  """
  @spec list_zone(Tesla.Env.client(), keyword()) ::
          {:ok, Voxbone.Model.ListZoneResponse.t()} | {:error, Tesla.Env.t()}
  def list_zone(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/inventory/zone")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%Voxbone.Model.ListZoneResponse{})
  end
end
