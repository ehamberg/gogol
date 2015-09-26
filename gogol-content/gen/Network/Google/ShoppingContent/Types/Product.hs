{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types.Sum

-- | An error returned by the API.
--
-- /See:/ 'error'' smart constructor.
data Error = Error
    { _errDomain  :: !(Maybe Text)
    , _errReason  :: !(Maybe Text)
    , _errMessage :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Error' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'errDomain'
--
-- * 'errReason'
--
-- * 'errMessage'
error'
    :: Error
error' =
    Error
    { _errDomain = Nothing
    , _errReason = Nothing
    , _errMessage = Nothing
    }

-- | The domain of the error.
errDomain :: Lens' Error (Maybe Text)
errDomain
  = lens _errDomain (\ s a -> s{_errDomain = a})

-- | The error code.
errReason :: Lens' Error (Maybe Text)
errReason
  = lens _errReason (\ s a -> s{_errReason = a})

-- | A description of the error.
errMessage :: Lens' Error (Maybe Text)
errMessage
  = lens _errMessage (\ s a -> s{_errMessage = a})

-- | A list of errors returned by a failed batch entry.
--
-- /See:/ 'errors' smart constructor.
data Errors = Errors
    { _eCode    :: !(Maybe Word32)
    , _eMessage :: !(Maybe Text)
    , _eErrors  :: !(Maybe [Maybe Error])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Errors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eCode'
--
-- * 'eMessage'
--
-- * 'eErrors'
errors
    :: Errors
errors =
    Errors
    { _eCode = Nothing
    , _eMessage = Nothing
    , _eErrors = Nothing
    }

-- | The HTTP status of the first error in errors.
eCode :: Lens' Errors (Maybe Word32)
eCode = lens _eCode (\ s a -> s{_eCode = a})

-- | The message of the first error in errors.
eMessage :: Lens' Errors (Maybe Text)
eMessage = lens _eMessage (\ s a -> s{_eMessage = a})

-- | A list of errors.
eErrors :: Lens' Errors [Maybe Error]
eErrors
  = lens _eErrors (\ s a -> s{_eErrors = a}) . _Default
      . _Coerce

--
-- /See:/ 'order' smart constructor.
data Order = Order
    { _ordStatus          :: !(Maybe Text)
    , _ordMerchantId      :: !(Maybe Word64)
    , _ordRefunds         :: !(Maybe [Maybe OrderRefund])
    , _ordKind            :: !Text
    , _ordLineItems       :: !(Maybe [Maybe OrderLineItem])
    , _ordShipments       :: !(Maybe [Maybe OrderShipment])
    , _ordNetAmount       :: !(Maybe (Maybe Price))
    , _ordPlacedDate      :: !(Maybe Text)
    , _ordDeliveryDetails :: !(Maybe (Maybe OrderDeliveryDetails))
    , _ordShippingOption  :: !(Maybe Text)
    , _ordMerchantOrderId :: !(Maybe Text)
    , _ordAcknowledged    :: !(Maybe Bool)
    , _ordShippingCostTax :: !(Maybe (Maybe Price))
    , _ordCustomer        :: !(Maybe (Maybe OrderCustomer))
    , _ordId              :: !(Maybe Text)
    , _ordPaymentMethod   :: !(Maybe (Maybe OrderPaymentMethod))
    , _ordPaymentStatus   :: !(Maybe Text)
    , _ordShippingCost    :: !(Maybe (Maybe Price))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordStatus'
--
-- * 'ordMerchantId'
--
-- * 'ordRefunds'
--
-- * 'ordKind'
--
-- * 'ordLineItems'
--
-- * 'ordShipments'
--
-- * 'ordNetAmount'
--
-- * 'ordPlacedDate'
--
-- * 'ordDeliveryDetails'
--
-- * 'ordShippingOption'
--
-- * 'ordMerchantOrderId'
--
-- * 'ordAcknowledged'
--
-- * 'ordShippingCostTax'
--
-- * 'ordCustomer'
--
-- * 'ordId'
--
-- * 'ordPaymentMethod'
--
-- * 'ordPaymentStatus'
--
-- * 'ordShippingCost'
order
    :: Order
order =
    Order
    { _ordStatus = Nothing
    , _ordMerchantId = Nothing
    , _ordRefunds = Nothing
    , _ordKind = "content#order"
    , _ordLineItems = Nothing
    , _ordShipments = Nothing
    , _ordNetAmount = Nothing
    , _ordPlacedDate = Nothing
    , _ordDeliveryDetails = Nothing
    , _ordShippingOption = Nothing
    , _ordMerchantOrderId = Nothing
    , _ordAcknowledged = Nothing
    , _ordShippingCostTax = Nothing
    , _ordCustomer = Nothing
    , _ordId = Nothing
    , _ordPaymentMethod = Nothing
    , _ordPaymentStatus = Nothing
    , _ordShippingCost = Nothing
    }

-- | The status of the order.
ordStatus :: Lens' Order (Maybe Text)
ordStatus
  = lens _ordStatus (\ s a -> s{_ordStatus = a})

ordMerchantId :: Lens' Order (Maybe Word64)
ordMerchantId
  = lens _ordMerchantId
      (\ s a -> s{_ordMerchantId = a})

-- | Refunds for the order.
ordRefunds :: Lens' Order [Maybe OrderRefund]
ordRefunds
  = lens _ordRefunds (\ s a -> s{_ordRefunds = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#order\".
ordKind :: Lens' Order Text
ordKind = lens _ordKind (\ s a -> s{_ordKind = a})

-- | Line items that are ordered.
ordLineItems :: Lens' Order [Maybe OrderLineItem]
ordLineItems
  = lens _ordLineItems (\ s a -> s{_ordLineItems = a})
      . _Default
      . _Coerce

-- | Shipments of the order.
ordShipments :: Lens' Order [Maybe OrderShipment]
ordShipments
  = lens _ordShipments (\ s a -> s{_ordShipments = a})
      . _Default
      . _Coerce

-- | The net amount for the order. For example, if an order was originally
-- for a grand total of $100 and a refund was issued for $20, the net
-- amount will be $80.
ordNetAmount :: Lens' Order (Maybe (Maybe Price))
ordNetAmount
  = lens _ordNetAmount (\ s a -> s{_ordNetAmount = a})

-- | The date when the order was placed, in ISO 8601 format.
ordPlacedDate :: Lens' Order (Maybe Text)
ordPlacedDate
  = lens _ordPlacedDate
      (\ s a -> s{_ordPlacedDate = a})

-- | The details for the delivery.
ordDeliveryDetails :: Lens' Order (Maybe (Maybe OrderDeliveryDetails))
ordDeliveryDetails
  = lens _ordDeliveryDetails
      (\ s a -> s{_ordDeliveryDetails = a})

-- | The requested shipping option.
ordShippingOption :: Lens' Order (Maybe Text)
ordShippingOption
  = lens _ordShippingOption
      (\ s a -> s{_ordShippingOption = a})

-- | Merchant-provided id of the order.
ordMerchantOrderId :: Lens' Order (Maybe Text)
ordMerchantOrderId
  = lens _ordMerchantOrderId
      (\ s a -> s{_ordMerchantOrderId = a})

-- | Whether the order was acknowledged.
ordAcknowledged :: Lens' Order (Maybe Bool)
ordAcknowledged
  = lens _ordAcknowledged
      (\ s a -> s{_ordAcknowledged = a})

-- | The tax for the total shipping cost.
ordShippingCostTax :: Lens' Order (Maybe (Maybe Price))
ordShippingCostTax
  = lens _ordShippingCostTax
      (\ s a -> s{_ordShippingCostTax = a})

-- | The details of the customer who placed the order.
ordCustomer :: Lens' Order (Maybe (Maybe OrderCustomer))
ordCustomer
  = lens _ordCustomer (\ s a -> s{_ordCustomer = a})

-- | The REST id of the order. Globally unique.
ordId :: Lens' Order (Maybe Text)
ordId = lens _ordId (\ s a -> s{_ordId = a})

-- | The details of the payment method.
ordPaymentMethod :: Lens' Order (Maybe (Maybe OrderPaymentMethod))
ordPaymentMethod
  = lens _ordPaymentMethod
      (\ s a -> s{_ordPaymentMethod = a})

-- | The status of the payment.
ordPaymentStatus :: Lens' Order (Maybe Text)
ordPaymentStatus
  = lens _ordPaymentStatus
      (\ s a -> s{_ordPaymentStatus = a})

-- | The total cost of shipping for all items.
ordShippingCost :: Lens' Order (Maybe (Maybe Price))
ordShippingCost
  = lens _ordShippingCost
      (\ s a -> s{_ordShippingCost = a})

--
-- /See:/ 'orderAddress' smart constructor.
data OrderAddress = OrderAddress
    { _oaRecipientName   :: !(Maybe Text)
    , _oaStreetAddress   :: !(Maybe [Text])
    , _oaCountry         :: !(Maybe Text)
    , _oaPostalCode      :: !(Maybe Text)
    , _oaLocality        :: !(Maybe Text)
    , _oaIsPostOfficeBox :: !(Maybe Bool)
    , _oaFullAddress     :: !(Maybe [Text])
    , _oaRegion          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaRecipientName'
--
-- * 'oaStreetAddress'
--
-- * 'oaCountry'
--
-- * 'oaPostalCode'
--
-- * 'oaLocality'
--
-- * 'oaIsPostOfficeBox'
--
-- * 'oaFullAddress'
--
-- * 'oaRegion'
orderAddress
    :: OrderAddress
orderAddress =
    OrderAddress
    { _oaRecipientName = Nothing
    , _oaStreetAddress = Nothing
    , _oaCountry = Nothing
    , _oaPostalCode = Nothing
    , _oaLocality = Nothing
    , _oaIsPostOfficeBox = Nothing
    , _oaFullAddress = Nothing
    , _oaRegion = Nothing
    }

-- | Name of the recipient.
oaRecipientName :: Lens' OrderAddress (Maybe Text)
oaRecipientName
  = lens _oaRecipientName
      (\ s a -> s{_oaRecipientName = a})

-- | Street-level part of the address.
oaStreetAddress :: Lens' OrderAddress [Text]
oaStreetAddress
  = lens _oaStreetAddress
      (\ s a -> s{_oaStreetAddress = a})
      . _Default
      . _Coerce

-- | CLDR country code (e.g. \"US\").
oaCountry :: Lens' OrderAddress (Maybe Text)
oaCountry
  = lens _oaCountry (\ s a -> s{_oaCountry = a})

-- | Postal Code or ZIP (e.g. \"94043\").
oaPostalCode :: Lens' OrderAddress (Maybe Text)
oaPostalCode
  = lens _oaPostalCode (\ s a -> s{_oaPostalCode = a})

-- | City, town or commune. May also include dependent localities or
-- sublocalities (e.g. neighborhoods or suburbs).
oaLocality :: Lens' OrderAddress (Maybe Text)
oaLocality
  = lens _oaLocality (\ s a -> s{_oaLocality = a})

-- | Whether the address is a post office box.
oaIsPostOfficeBox :: Lens' OrderAddress (Maybe Bool)
oaIsPostOfficeBox
  = lens _oaIsPostOfficeBox
      (\ s a -> s{_oaIsPostOfficeBox = a})

-- | Strings representing the lines of the printed label for mailing the
-- order, for example: John Smith 1600 Amphitheatre Parkway Mountain View,
-- CA, 94043 United States
oaFullAddress :: Lens' OrderAddress [Text]
oaFullAddress
  = lens _oaFullAddress
      (\ s a -> s{_oaFullAddress = a})
      . _Default
      . _Coerce

-- | Top-level administrative subdivision of the country (e.g. \"CA\").
oaRegion :: Lens' OrderAddress (Maybe Text)
oaRegion = lens _oaRegion (\ s a -> s{_oaRegion = a})

--
-- /See:/ 'orderCancellation' smart constructor.
data OrderCancellation = OrderCancellation
    { _ocQuantity     :: !(Maybe Word32)
    , _ocActor        :: !(Maybe Text)
    , _ocReason       :: !(Maybe Text)
    , _ocCreationDate :: !(Maybe Text)
    , _ocReasonText   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderCancellation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocQuantity'
--
-- * 'ocActor'
--
-- * 'ocReason'
--
-- * 'ocCreationDate'
--
-- * 'ocReasonText'
orderCancellation
    :: OrderCancellation
orderCancellation =
    OrderCancellation
    { _ocQuantity = Nothing
    , _ocActor = Nothing
    , _ocReason = Nothing
    , _ocCreationDate = Nothing
    , _ocReasonText = Nothing
    }

-- | The quantity that was canceled.
ocQuantity :: Lens' OrderCancellation (Maybe Word32)
ocQuantity
  = lens _ocQuantity (\ s a -> s{_ocQuantity = a})

-- | The actor that created the cancellation.
ocActor :: Lens' OrderCancellation (Maybe Text)
ocActor = lens _ocActor (\ s a -> s{_ocActor = a})

-- | The reason for the cancellation.
ocReason :: Lens' OrderCancellation (Maybe Text)
ocReason = lens _ocReason (\ s a -> s{_ocReason = a})

-- | Date on which the cancellation has been created, in ISO 8601 format.
ocCreationDate :: Lens' OrderCancellation (Maybe Text)
ocCreationDate
  = lens _ocCreationDate
      (\ s a -> s{_ocCreationDate = a})

-- | The explanation of the reason.
ocReasonText :: Lens' OrderCancellation (Maybe Text)
ocReasonText
  = lens _ocReasonText (\ s a -> s{_ocReasonText = a})

--
-- /See:/ 'orderCustomer' smart constructor.
data OrderCustomer = OrderCustomer
    { _ocFullName                    :: !(Maybe Text)
    , _ocEmail                       :: !(Maybe Text)
    , _ocExplicitMarketingPreference :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocFullName'
--
-- * 'ocEmail'
--
-- * 'ocExplicitMarketingPreference'
orderCustomer
    :: OrderCustomer
orderCustomer =
    OrderCustomer
    { _ocFullName = Nothing
    , _ocEmail = Nothing
    , _ocExplicitMarketingPreference = Nothing
    }

-- | Full name of the customer.
ocFullName :: Lens' OrderCustomer (Maybe Text)
ocFullName
  = lens _ocFullName (\ s a -> s{_ocFullName = a})

-- | Email address of the customer.
ocEmail :: Lens' OrderCustomer (Maybe Text)
ocEmail = lens _ocEmail (\ s a -> s{_ocEmail = a})

-- | If set, this indicates the user had a choice to opt in or out of
-- providing marketing rights to the merchant. If unset, this indicates the
-- user has already made this choice in a previous purchase, and was thus
-- not shown the marketing right opt in\/out checkbox during the Purchases
-- on Google checkout flow.
ocExplicitMarketingPreference :: Lens' OrderCustomer (Maybe Bool)
ocExplicitMarketingPreference
  = lens _ocExplicitMarketingPreference
      (\ s a -> s{_ocExplicitMarketingPreference = a})

--
-- /See:/ 'orderDeliveryDetails' smart constructor.
data OrderDeliveryDetails = OrderDeliveryDetails
    { _oddAddress     :: !(Maybe (Maybe OrderAddress))
    , _oddPhoneNumber :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderDeliveryDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oddAddress'
--
-- * 'oddPhoneNumber'
orderDeliveryDetails
    :: OrderDeliveryDetails
orderDeliveryDetails =
    OrderDeliveryDetails
    { _oddAddress = Nothing
    , _oddPhoneNumber = Nothing
    }

-- | The delivery address
oddAddress :: Lens' OrderDeliveryDetails (Maybe (Maybe OrderAddress))
oddAddress
  = lens _oddAddress (\ s a -> s{_oddAddress = a})

-- | The phone number of the person receiving the delivery.
oddPhoneNumber :: Lens' OrderDeliveryDetails (Maybe Text)
oddPhoneNumber
  = lens _oddPhoneNumber
      (\ s a -> s{_oddPhoneNumber = a})

--
-- /See:/ 'orderLineItem' smart constructor.
data OrderLineItem = OrderLineItem
    { _oliQuantityOrdered   :: !(Maybe Word32)
    , _oliReturnInfo        :: !(Maybe (Maybe OrderLineItemReturnInfo))
    , _oliQuantityDelivered :: !(Maybe Word32)
    , _oliShippingDetails   :: !(Maybe (Maybe OrderLineItemShippingDetails))
    , _oliQuantityPending   :: !(Maybe Word32)
    , _oliCancellations     :: !(Maybe [Maybe OrderCancellation])
    , _oliQuantityCanceled  :: !(Maybe Word32)
    , _oliId                :: !(Maybe Text)
    , _oliTax               :: !(Maybe (Maybe Price))
    , _oliPrice             :: !(Maybe (Maybe Price))
    , _oliQuantityShipped   :: !(Maybe Word32)
    , _oliQuantityReturned  :: !(Maybe Word32)
    , _oliProduct           :: !(Maybe (Maybe OrderLineItemProduct))
    , _oliReturns           :: !(Maybe [Maybe OrderReturn])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oliQuantityOrdered'
--
-- * 'oliReturnInfo'
--
-- * 'oliQuantityDelivered'
--
-- * 'oliShippingDetails'
--
-- * 'oliQuantityPending'
--
-- * 'oliCancellations'
--
-- * 'oliQuantityCanceled'
--
-- * 'oliId'
--
-- * 'oliTax'
--
-- * 'oliPrice'
--
-- * 'oliQuantityShipped'
--
-- * 'oliQuantityReturned'
--
-- * 'oliProduct'
--
-- * 'oliReturns'
orderLineItem
    :: OrderLineItem
orderLineItem =
    OrderLineItem
    { _oliQuantityOrdered = Nothing
    , _oliReturnInfo = Nothing
    , _oliQuantityDelivered = Nothing
    , _oliShippingDetails = Nothing
    , _oliQuantityPending = Nothing
    , _oliCancellations = Nothing
    , _oliQuantityCanceled = Nothing
    , _oliId = Nothing
    , _oliTax = Nothing
    , _oliPrice = Nothing
    , _oliQuantityShipped = Nothing
    , _oliQuantityReturned = Nothing
    , _oliProduct = Nothing
    , _oliReturns = Nothing
    }

-- | Number of items ordered.
oliQuantityOrdered :: Lens' OrderLineItem (Maybe Word32)
oliQuantityOrdered
  = lens _oliQuantityOrdered
      (\ s a -> s{_oliQuantityOrdered = a})

-- | Details of the return policy for the line item.
oliReturnInfo :: Lens' OrderLineItem (Maybe (Maybe OrderLineItemReturnInfo))
oliReturnInfo
  = lens _oliReturnInfo
      (\ s a -> s{_oliReturnInfo = a})

-- | Number of items delivered.
oliQuantityDelivered :: Lens' OrderLineItem (Maybe Word32)
oliQuantityDelivered
  = lens _oliQuantityDelivered
      (\ s a -> s{_oliQuantityDelivered = a})

-- | Details of the requested shipping for the line item.
oliShippingDetails :: Lens' OrderLineItem (Maybe (Maybe OrderLineItemShippingDetails))
oliShippingDetails
  = lens _oliShippingDetails
      (\ s a -> s{_oliShippingDetails = a})

-- | Number of items pending.
oliQuantityPending :: Lens' OrderLineItem (Maybe Word32)
oliQuantityPending
  = lens _oliQuantityPending
      (\ s a -> s{_oliQuantityPending = a})

-- | Cancellations of the line item.
oliCancellations :: Lens' OrderLineItem [Maybe OrderCancellation]
oliCancellations
  = lens _oliCancellations
      (\ s a -> s{_oliCancellations = a})
      . _Default
      . _Coerce

-- | Number of items canceled.
oliQuantityCanceled :: Lens' OrderLineItem (Maybe Word32)
oliQuantityCanceled
  = lens _oliQuantityCanceled
      (\ s a -> s{_oliQuantityCanceled = a})

-- | The id of the line item.
oliId :: Lens' OrderLineItem (Maybe Text)
oliId = lens _oliId (\ s a -> s{_oliId = a})

-- | Total tax amount for the line item. For example, if two items are
-- purchased, and each have a cost tax of $2, the total tax amount will be
-- $4.
oliTax :: Lens' OrderLineItem (Maybe (Maybe Price))
oliTax = lens _oliTax (\ s a -> s{_oliTax = a})

-- | Total price for the line item. For example, if two items for $10 are
-- purchased, the total price will be $20.
oliPrice :: Lens' OrderLineItem (Maybe (Maybe Price))
oliPrice = lens _oliPrice (\ s a -> s{_oliPrice = a})

-- | Number of items shipped.
oliQuantityShipped :: Lens' OrderLineItem (Maybe Word32)
oliQuantityShipped
  = lens _oliQuantityShipped
      (\ s a -> s{_oliQuantityShipped = a})

-- | Number of items returned.
oliQuantityReturned :: Lens' OrderLineItem (Maybe Word32)
oliQuantityReturned
  = lens _oliQuantityReturned
      (\ s a -> s{_oliQuantityReturned = a})

-- | Product data from the time of the order placement.
oliProduct :: Lens' OrderLineItem (Maybe (Maybe OrderLineItemProduct))
oliProduct
  = lens _oliProduct (\ s a -> s{_oliProduct = a})

-- | Returns of the line item.
oliReturns :: Lens' OrderLineItem [Maybe OrderReturn]
oliReturns
  = lens _oliReturns (\ s a -> s{_oliReturns = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'orderLineItemProduct' smart constructor.
data OrderLineItemProduct = OrderLineItemProduct
    { _olipImageLink         :: !(Maybe Text)
    , _olipShownImage        :: !(Maybe Text)
    , _olipChannel           :: !(Maybe Text)
    , _olipBrand             :: !(Maybe Text)
    , _olipTargetCountry     :: !(Maybe Text)
    , _olipGtin              :: !(Maybe Text)
    , _olipItemGroupId       :: !(Maybe Text)
    , _olipOfferId           :: !(Maybe Text)
    , _olipId                :: !(Maybe Text)
    , _olipPrice             :: !(Maybe (Maybe Price))
    , _olipVariantAttributes :: !(Maybe [Maybe OrderLineItemProductVariantAttribute])
    , _olipTitle             :: !(Maybe Text)
    , _olipContentLanguage   :: !(Maybe Text)
    , _olipMpn               :: !(Maybe Text)
    , _olipCondition         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderLineItemProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipImageLink'
--
-- * 'olipShownImage'
--
-- * 'olipChannel'
--
-- * 'olipBrand'
--
-- * 'olipTargetCountry'
--
-- * 'olipGtin'
--
-- * 'olipItemGroupId'
--
-- * 'olipOfferId'
--
-- * 'olipId'
--
-- * 'olipPrice'
--
-- * 'olipVariantAttributes'
--
-- * 'olipTitle'
--
-- * 'olipContentLanguage'
--
-- * 'olipMpn'
--
-- * 'olipCondition'
orderLineItemProduct
    :: OrderLineItemProduct
orderLineItemProduct =
    OrderLineItemProduct
    { _olipImageLink = Nothing
    , _olipShownImage = Nothing
    , _olipChannel = Nothing
    , _olipBrand = Nothing
    , _olipTargetCountry = Nothing
    , _olipGtin = Nothing
    , _olipItemGroupId = Nothing
    , _olipOfferId = Nothing
    , _olipId = Nothing
    , _olipPrice = Nothing
    , _olipVariantAttributes = Nothing
    , _olipTitle = Nothing
    , _olipContentLanguage = Nothing
    , _olipMpn = Nothing
    , _olipCondition = Nothing
    }

-- | URL of an image of the item.
olipImageLink :: Lens' OrderLineItemProduct (Maybe Text)
olipImageLink
  = lens _olipImageLink
      (\ s a -> s{_olipImageLink = a})

-- | URL to the cached image shown to the user when order was placed.
olipShownImage :: Lens' OrderLineItemProduct (Maybe Text)
olipShownImage
  = lens _olipShownImage
      (\ s a -> s{_olipShownImage = a})

-- | The item\'s channel (online or local).
olipChannel :: Lens' OrderLineItemProduct (Maybe Text)
olipChannel
  = lens _olipChannel (\ s a -> s{_olipChannel = a})

-- | Brand of the item.
olipBrand :: Lens' OrderLineItemProduct (Maybe Text)
olipBrand
  = lens _olipBrand (\ s a -> s{_olipBrand = a})

-- | The CLDR territory code of the target country of the product.
olipTargetCountry :: Lens' OrderLineItemProduct (Maybe Text)
olipTargetCountry
  = lens _olipTargetCountry
      (\ s a -> s{_olipTargetCountry = a})

-- | Global Trade Item Number (GTIN) of the item.
olipGtin :: Lens' OrderLineItemProduct (Maybe Text)
olipGtin = lens _olipGtin (\ s a -> s{_olipGtin = a})

-- | Shared identifier for all variants of the same product.
olipItemGroupId :: Lens' OrderLineItemProduct (Maybe Text)
olipItemGroupId
  = lens _olipItemGroupId
      (\ s a -> s{_olipItemGroupId = a})

-- | An identifier of the item.
olipOfferId :: Lens' OrderLineItemProduct (Maybe Text)
olipOfferId
  = lens _olipOfferId (\ s a -> s{_olipOfferId = a})

-- | The REST id of the product.
olipId :: Lens' OrderLineItemProduct (Maybe Text)
olipId = lens _olipId (\ s a -> s{_olipId = a})

-- | Price of the item.
olipPrice :: Lens' OrderLineItemProduct (Maybe (Maybe Price))
olipPrice
  = lens _olipPrice (\ s a -> s{_olipPrice = a})

-- | Variant attributes for the item. These are dimensions of the product,
-- such as color, gender, material, pattern, and size. You can find a
-- comprehensive list of variant attributes here.
olipVariantAttributes :: Lens' OrderLineItemProduct [Maybe OrderLineItemProductVariantAttribute]
olipVariantAttributes
  = lens _olipVariantAttributes
      (\ s a -> s{_olipVariantAttributes = a})
      . _Default
      . _Coerce

-- | The title of the product.
olipTitle :: Lens' OrderLineItemProduct (Maybe Text)
olipTitle
  = lens _olipTitle (\ s a -> s{_olipTitle = a})

-- | The two-letter ISO 639-1 language code for the item.
olipContentLanguage :: Lens' OrderLineItemProduct (Maybe Text)
olipContentLanguage
  = lens _olipContentLanguage
      (\ s a -> s{_olipContentLanguage = a})

-- | Manufacturer Part Number (MPN) of the item.
olipMpn :: Lens' OrderLineItemProduct (Maybe Text)
olipMpn = lens _olipMpn (\ s a -> s{_olipMpn = a})

-- | Condition or state of the item.
olipCondition :: Lens' OrderLineItemProduct (Maybe Text)
olipCondition
  = lens _olipCondition
      (\ s a -> s{_olipCondition = a})

--
-- /See:/ 'orderLineItemProductVariantAttribute' smart constructor.
data OrderLineItemProductVariantAttribute = OrderLineItemProductVariantAttribute
    { _olipvaDimension :: !(Maybe Text)
    , _olipvaValue     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderLineItemProductVariantAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipvaDimension'
--
-- * 'olipvaValue'
orderLineItemProductVariantAttribute
    :: OrderLineItemProductVariantAttribute
orderLineItemProductVariantAttribute =
    OrderLineItemProductVariantAttribute
    { _olipvaDimension = Nothing
    , _olipvaValue = Nothing
    }

-- | The dimension of the variant.
olipvaDimension :: Lens' OrderLineItemProductVariantAttribute (Maybe Text)
olipvaDimension
  = lens _olipvaDimension
      (\ s a -> s{_olipvaDimension = a})

-- | The value for the dimension.
olipvaValue :: Lens' OrderLineItemProductVariantAttribute (Maybe Text)
olipvaValue
  = lens _olipvaValue (\ s a -> s{_olipvaValue = a})

--
-- /See:/ 'orderLineItemReturnInfo' smart constructor.
data OrderLineItemReturnInfo = OrderLineItemReturnInfo
    { _oliriIsReturnable :: !(Maybe Bool)
    , _oliriPolicyUrl    :: !(Maybe Text)
    , _oliriDaysToReturn :: !(Maybe Int32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderLineItemReturnInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oliriIsReturnable'
--
-- * 'oliriPolicyUrl'
--
-- * 'oliriDaysToReturn'
orderLineItemReturnInfo
    :: OrderLineItemReturnInfo
orderLineItemReturnInfo =
    OrderLineItemReturnInfo
    { _oliriIsReturnable = Nothing
    , _oliriPolicyUrl = Nothing
    , _oliriDaysToReturn = Nothing
    }

-- | Whether the item is returnable.
oliriIsReturnable :: Lens' OrderLineItemReturnInfo (Maybe Bool)
oliriIsReturnable
  = lens _oliriIsReturnable
      (\ s a -> s{_oliriIsReturnable = a})

-- | URL of the item return policy.
oliriPolicyUrl :: Lens' OrderLineItemReturnInfo (Maybe Text)
oliriPolicyUrl
  = lens _oliriPolicyUrl
      (\ s a -> s{_oliriPolicyUrl = a})

-- | How many days later the item can be returned.
oliriDaysToReturn :: Lens' OrderLineItemReturnInfo (Maybe Int32)
oliriDaysToReturn
  = lens _oliriDaysToReturn
      (\ s a -> s{_oliriDaysToReturn = a})

--
-- /See:/ 'orderLineItemShippingDetails' smart constructor.
data OrderLineItemShippingDetails = OrderLineItemShippingDetails
    { _olisdShipByDate    :: !(Maybe Text)
    , _olisdMethod        :: !(Maybe (Maybe OrderLineItemShippingDetailsMethod))
    , _olisdDeliverByDate :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderLineItemShippingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olisdShipByDate'
--
-- * 'olisdMethod'
--
-- * 'olisdDeliverByDate'
orderLineItemShippingDetails
    :: OrderLineItemShippingDetails
orderLineItemShippingDetails =
    OrderLineItemShippingDetails
    { _olisdShipByDate = Nothing
    , _olisdMethod = Nothing
    , _olisdDeliverByDate = Nothing
    }

-- | The ship by date, in ISO 8601 format.
olisdShipByDate :: Lens' OrderLineItemShippingDetails (Maybe Text)
olisdShipByDate
  = lens _olisdShipByDate
      (\ s a -> s{_olisdShipByDate = a})

-- | Details of the shipping method.
olisdMethod :: Lens' OrderLineItemShippingDetails (Maybe (Maybe OrderLineItemShippingDetailsMethod))
olisdMethod
  = lens _olisdMethod (\ s a -> s{_olisdMethod = a})

-- | The delivery by date, in ISO 8601 format.
olisdDeliverByDate :: Lens' OrderLineItemShippingDetails (Maybe Text)
olisdDeliverByDate
  = lens _olisdDeliverByDate
      (\ s a -> s{_olisdDeliverByDate = a})

--
-- /See:/ 'orderLineItemShippingDetailsMethod' smart constructor.
data OrderLineItemShippingDetailsMethod = OrderLineItemShippingDetailsMethod
    { _olisdmCarrier          :: !(Maybe Text)
    , _olisdmMethodName       :: !(Maybe Text)
    , _olisdmMaxDaysInTransit :: !(Maybe Word32)
    , _olisdmMinDaysInTransit :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderLineItemShippingDetailsMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olisdmCarrier'
--
-- * 'olisdmMethodName'
--
-- * 'olisdmMaxDaysInTransit'
--
-- * 'olisdmMinDaysInTransit'
orderLineItemShippingDetailsMethod
    :: OrderLineItemShippingDetailsMethod
orderLineItemShippingDetailsMethod =
    OrderLineItemShippingDetailsMethod
    { _olisdmCarrier = Nothing
    , _olisdmMethodName = Nothing
    , _olisdmMaxDaysInTransit = Nothing
    , _olisdmMinDaysInTransit = Nothing
    }

-- | The carrier for the shipping. Optional.
olisdmCarrier :: Lens' OrderLineItemShippingDetailsMethod (Maybe Text)
olisdmCarrier
  = lens _olisdmCarrier
      (\ s a -> s{_olisdmCarrier = a})

-- | The name of the shipping method.
olisdmMethodName :: Lens' OrderLineItemShippingDetailsMethod (Maybe Text)
olisdmMethodName
  = lens _olisdmMethodName
      (\ s a -> s{_olisdmMethodName = a})

-- | Maximum transit time.
olisdmMaxDaysInTransit :: Lens' OrderLineItemShippingDetailsMethod (Maybe Word32)
olisdmMaxDaysInTransit
  = lens _olisdmMaxDaysInTransit
      (\ s a -> s{_olisdmMaxDaysInTransit = a})

-- | Minimum transit time.
olisdmMinDaysInTransit :: Lens' OrderLineItemShippingDetailsMethod (Maybe Word32)
olisdmMinDaysInTransit
  = lens _olisdmMinDaysInTransit
      (\ s a -> s{_olisdmMinDaysInTransit = a})

--
-- /See:/ 'orderPaymentMethod' smart constructor.
data OrderPaymentMethod = OrderPaymentMethod
    { _opmExpirationMonth :: !(Maybe Int32)
    , _opmExpirationYear  :: !(Maybe Int32)
    , _opmPhoneNumber     :: !(Maybe Text)
    , _opmBillingAddress  :: !(Maybe (Maybe OrderAddress))
    , _opmLastFourDigits  :: !(Maybe Text)
    , _opmType            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderPaymentMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opmExpirationMonth'
--
-- * 'opmExpirationYear'
--
-- * 'opmPhoneNumber'
--
-- * 'opmBillingAddress'
--
-- * 'opmLastFourDigits'
--
-- * 'opmType'
orderPaymentMethod
    :: OrderPaymentMethod
orderPaymentMethod =
    OrderPaymentMethod
    { _opmExpirationMonth = Nothing
    , _opmExpirationYear = Nothing
    , _opmPhoneNumber = Nothing
    , _opmBillingAddress = Nothing
    , _opmLastFourDigits = Nothing
    , _opmType = Nothing
    }

-- | The card expiration month (January = 1, February = 2 etc.).
opmExpirationMonth :: Lens' OrderPaymentMethod (Maybe Int32)
opmExpirationMonth
  = lens _opmExpirationMonth
      (\ s a -> s{_opmExpirationMonth = a})

-- | The card expiration year (4-digit, e.g. 2015).
opmExpirationYear :: Lens' OrderPaymentMethod (Maybe Int32)
opmExpirationYear
  = lens _opmExpirationYear
      (\ s a -> s{_opmExpirationYear = a})

-- | The billing phone number.
opmPhoneNumber :: Lens' OrderPaymentMethod (Maybe Text)
opmPhoneNumber
  = lens _opmPhoneNumber
      (\ s a -> s{_opmPhoneNumber = a})

-- | The billing address.
opmBillingAddress :: Lens' OrderPaymentMethod (Maybe (Maybe OrderAddress))
opmBillingAddress
  = lens _opmBillingAddress
      (\ s a -> s{_opmBillingAddress = a})

-- | The last four digits of the card number.
opmLastFourDigits :: Lens' OrderPaymentMethod (Maybe Text)
opmLastFourDigits
  = lens _opmLastFourDigits
      (\ s a -> s{_opmLastFourDigits = a})

-- | The type of instrument (VISA, Mastercard, etc).
opmType :: Lens' OrderPaymentMethod (Maybe Text)
opmType = lens _opmType (\ s a -> s{_opmType = a})

--
-- /See:/ 'orderRefund' smart constructor.
data OrderRefund = OrderRefund
    { _orAmount       :: !(Maybe (Maybe Price))
    , _orActor        :: !(Maybe Text)
    , _orReason       :: !(Maybe Text)
    , _orCreationDate :: !(Maybe Text)
    , _orReasonText   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orAmount'
--
-- * 'orActor'
--
-- * 'orReason'
--
-- * 'orCreationDate'
--
-- * 'orReasonText'
orderRefund
    :: OrderRefund
orderRefund =
    OrderRefund
    { _orAmount = Nothing
    , _orActor = Nothing
    , _orReason = Nothing
    , _orCreationDate = Nothing
    , _orReasonText = Nothing
    }

-- | The amount that is refunded.
orAmount :: Lens' OrderRefund (Maybe (Maybe Price))
orAmount = lens _orAmount (\ s a -> s{_orAmount = a})

-- | The actor that created the refund.
orActor :: Lens' OrderRefund (Maybe Text)
orActor = lens _orActor (\ s a -> s{_orActor = a})

-- | The reason for the refund.
orReason :: Lens' OrderRefund (Maybe Text)
orReason = lens _orReason (\ s a -> s{_orReason = a})

-- | Date on which the item has been created, in ISO 8601 format.
orCreationDate :: Lens' OrderRefund (Maybe Text)
orCreationDate
  = lens _orCreationDate
      (\ s a -> s{_orCreationDate = a})

-- | The explanation of the reason.
orReasonText :: Lens' OrderRefund (Maybe Text)
orReasonText
  = lens _orReasonText (\ s a -> s{_orReasonText = a})

--
-- /See:/ 'orderReturn' smart constructor.
data OrderReturn = OrderReturn
    { _oQuantity     :: !(Maybe Word32)
    , _oActor        :: !(Maybe Text)
    , _oReason       :: !(Maybe Text)
    , _oCreationDate :: !(Maybe Text)
    , _oReasonText   :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderReturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oQuantity'
--
-- * 'oActor'
--
-- * 'oReason'
--
-- * 'oCreationDate'
--
-- * 'oReasonText'
orderReturn
    :: OrderReturn
orderReturn =
    OrderReturn
    { _oQuantity = Nothing
    , _oActor = Nothing
    , _oReason = Nothing
    , _oCreationDate = Nothing
    , _oReasonText = Nothing
    }

-- | Quantity that is returned.
oQuantity :: Lens' OrderReturn (Maybe Word32)
oQuantity
  = lens _oQuantity (\ s a -> s{_oQuantity = a})

-- | The actor that created the refund.
oActor :: Lens' OrderReturn (Maybe Text)
oActor = lens _oActor (\ s a -> s{_oActor = a})

-- | The reason for the return.
oReason :: Lens' OrderReturn (Maybe Text)
oReason = lens _oReason (\ s a -> s{_oReason = a})

-- | Date on which the item has been created, in ISO 8601 format.
oCreationDate :: Lens' OrderReturn (Maybe Text)
oCreationDate
  = lens _oCreationDate
      (\ s a -> s{_oCreationDate = a})

-- | The explanation of the reason.
oReasonText :: Lens' OrderReturn (Maybe Text)
oReasonText
  = lens _oReasonText (\ s a -> s{_oReasonText = a})

--
-- /See:/ 'orderShipment' smart constructor.
data OrderShipment = OrderShipment
    { _osCarrier      :: !(Maybe Text)
    , _osStatus       :: !(Maybe Text)
    , _osTrackingId   :: !(Maybe Text)
    , _osLineItems    :: !(Maybe [Maybe OrderShipmentLineItemShipment])
    , _osId           :: !(Maybe Text)
    , _osCreationDate :: !(Maybe Text)
    , _osDeliveryDate :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osCarrier'
--
-- * 'osStatus'
--
-- * 'osTrackingId'
--
-- * 'osLineItems'
--
-- * 'osId'
--
-- * 'osCreationDate'
--
-- * 'osDeliveryDate'
orderShipment
    :: OrderShipment
orderShipment =
    OrderShipment
    { _osCarrier = Nothing
    , _osStatus = Nothing
    , _osTrackingId = Nothing
    , _osLineItems = Nothing
    , _osId = Nothing
    , _osCreationDate = Nothing
    , _osDeliveryDate = Nothing
    }

-- | The carrier handling the shipment.
osCarrier :: Lens' OrderShipment (Maybe Text)
osCarrier
  = lens _osCarrier (\ s a -> s{_osCarrier = a})

-- | The status of the shipment.
osStatus :: Lens' OrderShipment (Maybe Text)
osStatus = lens _osStatus (\ s a -> s{_osStatus = a})

-- | The tracking id for the shipment.
osTrackingId :: Lens' OrderShipment (Maybe Text)
osTrackingId
  = lens _osTrackingId (\ s a -> s{_osTrackingId = a})

-- | The line items that are shipped.
osLineItems :: Lens' OrderShipment [Maybe OrderShipmentLineItemShipment]
osLineItems
  = lens _osLineItems (\ s a -> s{_osLineItems = a}) .
      _Default
      . _Coerce

-- | The id of the shipment.
osId :: Lens' OrderShipment (Maybe Text)
osId = lens _osId (\ s a -> s{_osId = a})

-- | Date on which the shipment has been created, in ISO 8601 format.
osCreationDate :: Lens' OrderShipment (Maybe Text)
osCreationDate
  = lens _osCreationDate
      (\ s a -> s{_osCreationDate = a})

-- | Date on which the shipment has been delivered, in ISO 8601 format.
-- Present only if status is delievered
osDeliveryDate :: Lens' OrderShipment (Maybe Text)
osDeliveryDate
  = lens _osDeliveryDate
      (\ s a -> s{_osDeliveryDate = a})

--
-- /See:/ 'orderShipmentLineItemShipment' smart constructor.
data OrderShipmentLineItemShipment = OrderShipmentLineItemShipment
    { _oslisQuantity   :: !(Maybe Word32)
    , _oslisLineItemId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderShipmentLineItemShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslisQuantity'
--
-- * 'oslisLineItemId'
orderShipmentLineItemShipment
    :: OrderShipmentLineItemShipment
orderShipmentLineItemShipment =
    OrderShipmentLineItemShipment
    { _oslisQuantity = Nothing
    , _oslisLineItemId = Nothing
    }

-- | The quantity that is shipped.
oslisQuantity :: Lens' OrderShipmentLineItemShipment (Maybe Word32)
oslisQuantity
  = lens _oslisQuantity
      (\ s a -> s{_oslisQuantity = a})

-- | The id of the line item that is shipped.
oslisLineItemId :: Lens' OrderShipmentLineItemShipment (Maybe Text)
oslisLineItemId
  = lens _oslisLineItemId
      (\ s a -> s{_oslisLineItemId = a})

--
-- /See:/ 'ordersAcknowledgeRequest' smart constructor.
newtype OrdersAcknowledgeRequest = OrdersAcknowledgeRequest
    { _oarOperationId :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarOperationId'
ordersAcknowledgeRequest
    :: OrdersAcknowledgeRequest
ordersAcknowledgeRequest =
    OrdersAcknowledgeRequest
    { _oarOperationId = Nothing
    }

-- | The ID of the operation. Unique across all operations for a given order.
oarOperationId :: Lens' OrdersAcknowledgeRequest (Maybe Text)
oarOperationId
  = lens _oarOperationId
      (\ s a -> s{_oarOperationId = a})

--
-- /See:/ 'ordersAcknowledgeResponse' smart constructor.
data OrdersAcknowledgeResponse = OrdersAcknowledgeResponse
    { _oarKind            :: !Text
    , _oarExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAcknowledgeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarKind'
--
-- * 'oarExecutionStatus'
ordersAcknowledgeResponse
    :: OrdersAcknowledgeResponse
ordersAcknowledgeResponse =
    OrdersAcknowledgeResponse
    { _oarKind = "content#ordersAcknowledgeResponse"
    , _oarExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersAcknowledgeResponse\".
oarKind :: Lens' OrdersAcknowledgeResponse Text
oarKind = lens _oarKind (\ s a -> s{_oarKind = a})

-- | The status of the execution.
oarExecutionStatus :: Lens' OrdersAcknowledgeResponse (Maybe Text)
oarExecutionStatus
  = lens _oarExecutionStatus
      (\ s a -> s{_oarExecutionStatus = a})

--
-- /See:/ 'ordersAdvanceTestOrderResponse' smart constructor.
newtype OrdersAdvanceTestOrderResponse = OrdersAdvanceTestOrderResponse
    { _oatorKind :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAdvanceTestOrderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oatorKind'
ordersAdvanceTestOrderResponse
    :: OrdersAdvanceTestOrderResponse
ordersAdvanceTestOrderResponse =
    OrdersAdvanceTestOrderResponse
    { _oatorKind = "content#ordersAdvanceTestOrderResponse"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersAdvanceTestOrderResponse\".
oatorKind :: Lens' OrdersAdvanceTestOrderResponse Text
oatorKind
  = lens _oatorKind (\ s a -> s{_oatorKind = a})

--
-- /See:/ 'ordersCancelLineItemRequest' smart constructor.
data OrdersCancelLineItemRequest = OrdersCancelLineItemRequest
    { _oclirQuantity    :: !(Maybe Word32)
    , _oclirLineItemId  :: !(Maybe Text)
    , _oclirReason      :: !(Maybe Text)
    , _oclirOperationId :: !(Maybe Text)
    , _oclirReasonText  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancelLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclirQuantity'
--
-- * 'oclirLineItemId'
--
-- * 'oclirReason'
--
-- * 'oclirOperationId'
--
-- * 'oclirReasonText'
ordersCancelLineItemRequest
    :: OrdersCancelLineItemRequest
ordersCancelLineItemRequest =
    OrdersCancelLineItemRequest
    { _oclirQuantity = Nothing
    , _oclirLineItemId = Nothing
    , _oclirReason = Nothing
    , _oclirOperationId = Nothing
    , _oclirReasonText = Nothing
    }

-- | The quantity to cancel.
oclirQuantity :: Lens' OrdersCancelLineItemRequest (Maybe Word32)
oclirQuantity
  = lens _oclirQuantity
      (\ s a -> s{_oclirQuantity = a})

-- | The ID of the line item to cancel.
oclirLineItemId :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirLineItemId
  = lens _oclirLineItemId
      (\ s a -> s{_oclirLineItemId = a})

-- | The reason for the cancellation.
oclirReason :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirReason
  = lens _oclirReason (\ s a -> s{_oclirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
oclirOperationId :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirOperationId
  = lens _oclirOperationId
      (\ s a -> s{_oclirOperationId = a})

-- | The explanation of the reason.
oclirReasonText :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirReasonText
  = lens _oclirReasonText
      (\ s a -> s{_oclirReasonText = a})

--
-- /See:/ 'ordersCancelLineItemResponse' smart constructor.
data OrdersCancelLineItemResponse = OrdersCancelLineItemResponse
    { _oclirKind            :: !Text
    , _oclirExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancelLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclirKind'
--
-- * 'oclirExecutionStatus'
ordersCancelLineItemResponse
    :: OrdersCancelLineItemResponse
ordersCancelLineItemResponse =
    OrdersCancelLineItemResponse
    { _oclirKind = "content#ordersCancelLineItemResponse"
    , _oclirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCancelLineItemResponse\".
oclirKind :: Lens' OrdersCancelLineItemResponse Text
oclirKind
  = lens _oclirKind (\ s a -> s{_oclirKind = a})

-- | The status of the execution.
oclirExecutionStatus :: Lens' OrdersCancelLineItemResponse (Maybe Text)
oclirExecutionStatus
  = lens _oclirExecutionStatus
      (\ s a -> s{_oclirExecutionStatus = a})

--
-- /See:/ 'ordersCancelRequest' smart constructor.
data OrdersCancelRequest = OrdersCancelRequest
    { _ocrReason      :: !(Maybe Text)
    , _ocrOperationId :: !(Maybe Text)
    , _ocrReasonText  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrReason'
--
-- * 'ocrOperationId'
--
-- * 'ocrReasonText'
ordersCancelRequest
    :: OrdersCancelRequest
ordersCancelRequest =
    OrdersCancelRequest
    { _ocrReason = Nothing
    , _ocrOperationId = Nothing
    , _ocrReasonText = Nothing
    }

-- | The reason for the cancellation.
ocrReason :: Lens' OrdersCancelRequest (Maybe Text)
ocrReason
  = lens _ocrReason (\ s a -> s{_ocrReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
ocrOperationId :: Lens' OrdersCancelRequest (Maybe Text)
ocrOperationId
  = lens _ocrOperationId
      (\ s a -> s{_ocrOperationId = a})

-- | The explanation of the reason.
ocrReasonText :: Lens' OrdersCancelRequest (Maybe Text)
ocrReasonText
  = lens _ocrReasonText
      (\ s a -> s{_ocrReasonText = a})

--
-- /See:/ 'ordersCancelResponse' smart constructor.
data OrdersCancelResponse = OrdersCancelResponse
    { _ocrKind            :: !Text
    , _ocrExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrKind'
--
-- * 'ocrExecutionStatus'
ordersCancelResponse
    :: OrdersCancelResponse
ordersCancelResponse =
    OrdersCancelResponse
    { _ocrKind = "content#ordersCancelResponse"
    , _ocrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCancelResponse\".
ocrKind :: Lens' OrdersCancelResponse Text
ocrKind = lens _ocrKind (\ s a -> s{_ocrKind = a})

-- | The status of the execution.
ocrExecutionStatus :: Lens' OrdersCancelResponse (Maybe Text)
ocrExecutionStatus
  = lens _ocrExecutionStatus
      (\ s a -> s{_ocrExecutionStatus = a})

--
-- /See:/ 'ordersCreateTestOrderRequest' smart constructor.
data OrdersCreateTestOrderRequest = OrdersCreateTestOrderRequest
    { _octorTemplateName :: !(Maybe Text)
    , _octorTestOrder    :: !(Maybe (Maybe TestOrder))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCreateTestOrderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octorTemplateName'
--
-- * 'octorTestOrder'
ordersCreateTestOrderRequest
    :: OrdersCreateTestOrderRequest
ordersCreateTestOrderRequest =
    OrdersCreateTestOrderRequest
    { _octorTemplateName = Nothing
    , _octorTestOrder = Nothing
    }

-- | The test order template to use. Specify as an alternative to testOrder
-- as a shortcut for retrieving a template and then creating an order using
-- that template.
octorTemplateName :: Lens' OrdersCreateTestOrderRequest (Maybe Text)
octorTemplateName
  = lens _octorTemplateName
      (\ s a -> s{_octorTemplateName = a})

-- | The test order to create.
octorTestOrder :: Lens' OrdersCreateTestOrderRequest (Maybe (Maybe TestOrder))
octorTestOrder
  = lens _octorTestOrder
      (\ s a -> s{_octorTestOrder = a})

--
-- /See:/ 'ordersCreateTestOrderResponse' smart constructor.
data OrdersCreateTestOrderResponse = OrdersCreateTestOrderResponse
    { _octorKind    :: !Text
    , _octorOrderId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCreateTestOrderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octorKind'
--
-- * 'octorOrderId'
ordersCreateTestOrderResponse
    :: OrdersCreateTestOrderResponse
ordersCreateTestOrderResponse =
    OrdersCreateTestOrderResponse
    { _octorKind = "content#ordersCreateTestOrderResponse"
    , _octorOrderId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCreateTestOrderResponse\".
octorKind :: Lens' OrdersCreateTestOrderResponse Text
octorKind
  = lens _octorKind (\ s a -> s{_octorKind = a})

-- | The ID of the newly created test order.
octorOrderId :: Lens' OrdersCreateTestOrderResponse (Maybe Text)
octorOrderId
  = lens _octorOrderId (\ s a -> s{_octorOrderId = a})

--
-- /See:/ 'ordersCustomBatchRequest' smart constructor.
newtype OrdersCustomBatchRequest = OrdersCustomBatchRequest
    { _oEntries :: Maybe [Maybe OrdersCustomBatchRequestEntry]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oEntries'
ordersCustomBatchRequest
    :: OrdersCustomBatchRequest
ordersCustomBatchRequest =
    OrdersCustomBatchRequest
    { _oEntries = Nothing
    }

-- | The request entries to be processed in the batch.
oEntries :: Lens' OrdersCustomBatchRequest [Maybe OrdersCustomBatchRequestEntry]
oEntries
  = lens _oEntries (\ s a -> s{_oEntries = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'ordersCustomBatchRequestEntry' smart constructor.
data OrdersCustomBatchRequestEntry = OrdersCustomBatchRequestEntry
    { _oMerchantId      :: !(Maybe Word64)
    , _oCancelLineItem  :: !(Maybe (Maybe OrdersCustomBatchRequestEntryCancelLineItem))
    , _oRefund          :: !(Maybe (Maybe OrdersCustomBatchRequestEntryRefund))
    , _oUpdateShipment  :: !(Maybe (Maybe OrdersCustomBatchRequestEntryUpdateShipment))
    , _oReturnLineItem  :: !(Maybe (Maybe OrdersCustomBatchRequestEntryReturnLineItem))
    , _oMerchantOrderId :: !(Maybe Text)
    , _oMethod          :: !(Maybe Text)
    , _oShipLineItems   :: !(Maybe (Maybe OrdersCustomBatchRequestEntryShipLineItems))
    , _oOperationId     :: !(Maybe Text)
    , _oOrderId         :: !(Maybe Text)
    , _oCancel          :: !(Maybe (Maybe OrdersCustomBatchRequestEntryCancel))
    , _oBatchId         :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oMerchantId'
--
-- * 'oCancelLineItem'
--
-- * 'oRefund'
--
-- * 'oUpdateShipment'
--
-- * 'oReturnLineItem'
--
-- * 'oMerchantOrderId'
--
-- * 'oMethod'
--
-- * 'oShipLineItems'
--
-- * 'oOperationId'
--
-- * 'oOrderId'
--
-- * 'oCancel'
--
-- * 'oBatchId'
ordersCustomBatchRequestEntry
    :: OrdersCustomBatchRequestEntry
ordersCustomBatchRequestEntry =
    OrdersCustomBatchRequestEntry
    { _oMerchantId = Nothing
    , _oCancelLineItem = Nothing
    , _oRefund = Nothing
    , _oUpdateShipment = Nothing
    , _oReturnLineItem = Nothing
    , _oMerchantOrderId = Nothing
    , _oMethod = Nothing
    , _oShipLineItems = Nothing
    , _oOperationId = Nothing
    , _oOrderId = Nothing
    , _oCancel = Nothing
    , _oBatchId = Nothing
    }

-- | The ID of the managing account.
oMerchantId :: Lens' OrdersCustomBatchRequestEntry (Maybe Word64)
oMerchantId
  = lens _oMerchantId (\ s a -> s{_oMerchantId = a})

-- | Required for cancelLineItem method.
oCancelLineItem :: Lens' OrdersCustomBatchRequestEntry (Maybe (Maybe OrdersCustomBatchRequestEntryCancelLineItem))
oCancelLineItem
  = lens _oCancelLineItem
      (\ s a -> s{_oCancelLineItem = a})

-- | Required for refund method.
oRefund :: Lens' OrdersCustomBatchRequestEntry (Maybe (Maybe OrdersCustomBatchRequestEntryRefund))
oRefund = lens _oRefund (\ s a -> s{_oRefund = a})

-- | Required for updateShipment method.
oUpdateShipment :: Lens' OrdersCustomBatchRequestEntry (Maybe (Maybe OrdersCustomBatchRequestEntryUpdateShipment))
oUpdateShipment
  = lens _oUpdateShipment
      (\ s a -> s{_oUpdateShipment = a})

-- | Required for returnLineItem method.
oReturnLineItem :: Lens' OrdersCustomBatchRequestEntry (Maybe (Maybe OrdersCustomBatchRequestEntryReturnLineItem))
oReturnLineItem
  = lens _oReturnLineItem
      (\ s a -> s{_oReturnLineItem = a})

-- | The merchant order id. Required for updateMerchantOrderId and
-- getByMerchantOrderId methods.
oMerchantOrderId :: Lens' OrdersCustomBatchRequestEntry (Maybe Text)
oMerchantOrderId
  = lens _oMerchantOrderId
      (\ s a -> s{_oMerchantOrderId = a})

-- | The method to apply.
oMethod :: Lens' OrdersCustomBatchRequestEntry (Maybe Text)
oMethod = lens _oMethod (\ s a -> s{_oMethod = a})

-- | Required for shipLineItems method.
oShipLineItems :: Lens' OrdersCustomBatchRequestEntry (Maybe (Maybe OrdersCustomBatchRequestEntryShipLineItems))
oShipLineItems
  = lens _oShipLineItems
      (\ s a -> s{_oShipLineItems = a})

-- | The ID of the operation. Unique across all operations for a given order.
-- Required for all methods beside get and getByMerchantOrderId.
oOperationId :: Lens' OrdersCustomBatchRequestEntry (Maybe Text)
oOperationId
  = lens _oOperationId (\ s a -> s{_oOperationId = a})

-- | The ID of the order. Required for all methods beside
-- getByMerchantOrderId.
oOrderId :: Lens' OrdersCustomBatchRequestEntry (Maybe Text)
oOrderId = lens _oOrderId (\ s a -> s{_oOrderId = a})

-- | Required for cancel method.
oCancel :: Lens' OrdersCustomBatchRequestEntry (Maybe (Maybe OrdersCustomBatchRequestEntryCancel))
oCancel = lens _oCancel (\ s a -> s{_oCancel = a})

-- | An entry ID, unique within the batch request.
oBatchId :: Lens' OrdersCustomBatchRequestEntry (Maybe Word32)
oBatchId = lens _oBatchId (\ s a -> s{_oBatchId = a})

--
-- /See:/ 'ordersCustomBatchRequestEntryCancel' smart constructor.
data OrdersCustomBatchRequestEntryCancel = OrdersCustomBatchRequestEntryCancel
    { _ocbrecReason     :: !(Maybe Text)
    , _ocbrecReasonText :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrecReason'
--
-- * 'ocbrecReasonText'
ordersCustomBatchRequestEntryCancel
    :: OrdersCustomBatchRequestEntryCancel
ordersCustomBatchRequestEntryCancel =
    OrdersCustomBatchRequestEntryCancel
    { _ocbrecReason = Nothing
    , _ocbrecReasonText = Nothing
    }

-- | The reason for the cancellation.
ocbrecReason :: Lens' OrdersCustomBatchRequestEntryCancel (Maybe Text)
ocbrecReason
  = lens _ocbrecReason (\ s a -> s{_ocbrecReason = a})

-- | The explanation of the reason.
ocbrecReasonText :: Lens' OrdersCustomBatchRequestEntryCancel (Maybe Text)
ocbrecReasonText
  = lens _ocbrecReasonText
      (\ s a -> s{_ocbrecReasonText = a})

--
-- /See:/ 'ordersCustomBatchRequestEntryCancelLineItem' smart constructor.
data OrdersCustomBatchRequestEntryCancelLineItem = OrdersCustomBatchRequestEntryCancelLineItem
    { _ocbrecliQuantity   :: !(Maybe Word32)
    , _ocbrecliLineItemId :: !(Maybe Text)
    , _ocbrecliReason     :: !(Maybe Text)
    , _ocbrecliReasonText :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryCancelLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrecliQuantity'
--
-- * 'ocbrecliLineItemId'
--
-- * 'ocbrecliReason'
--
-- * 'ocbrecliReasonText'
ordersCustomBatchRequestEntryCancelLineItem
    :: OrdersCustomBatchRequestEntryCancelLineItem
ordersCustomBatchRequestEntryCancelLineItem =
    OrdersCustomBatchRequestEntryCancelLineItem
    { _ocbrecliQuantity = Nothing
    , _ocbrecliLineItemId = Nothing
    , _ocbrecliReason = Nothing
    , _ocbrecliReasonText = Nothing
    }

-- | The quantity to cancel.
ocbrecliQuantity :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Word32)
ocbrecliQuantity
  = lens _ocbrecliQuantity
      (\ s a -> s{_ocbrecliQuantity = a})

-- | The ID of the line item to cancel.
ocbrecliLineItemId :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Text)
ocbrecliLineItemId
  = lens _ocbrecliLineItemId
      (\ s a -> s{_ocbrecliLineItemId = a})

-- | The reason for the cancellation.
ocbrecliReason :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Text)
ocbrecliReason
  = lens _ocbrecliReason
      (\ s a -> s{_ocbrecliReason = a})

-- | The explanation of the reason.
ocbrecliReasonText :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Text)
ocbrecliReasonText
  = lens _ocbrecliReasonText
      (\ s a -> s{_ocbrecliReasonText = a})

--
-- /See:/ 'ordersCustomBatchRequestEntryRefund' smart constructor.
data OrdersCustomBatchRequestEntryRefund = OrdersCustomBatchRequestEntryRefund
    { _ocbrerAmount     :: !(Maybe (Maybe Price))
    , _ocbrerReason     :: !(Maybe Text)
    , _ocbrerReasonText :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrerAmount'
--
-- * 'ocbrerReason'
--
-- * 'ocbrerReasonText'
ordersCustomBatchRequestEntryRefund
    :: OrdersCustomBatchRequestEntryRefund
ordersCustomBatchRequestEntryRefund =
    OrdersCustomBatchRequestEntryRefund
    { _ocbrerAmount = Nothing
    , _ocbrerReason = Nothing
    , _ocbrerReasonText = Nothing
    }

-- | The amount that is refunded.
ocbrerAmount :: Lens' OrdersCustomBatchRequestEntryRefund (Maybe (Maybe Price))
ocbrerAmount
  = lens _ocbrerAmount (\ s a -> s{_ocbrerAmount = a})

-- | The reason for the refund.
ocbrerReason :: Lens' OrdersCustomBatchRequestEntryRefund (Maybe Text)
ocbrerReason
  = lens _ocbrerReason (\ s a -> s{_ocbrerReason = a})

-- | The explanation of the reason.
ocbrerReasonText :: Lens' OrdersCustomBatchRequestEntryRefund (Maybe Text)
ocbrerReasonText
  = lens _ocbrerReasonText
      (\ s a -> s{_ocbrerReasonText = a})

--
-- /See:/ 'ordersCustomBatchRequestEntryReturnLineItem' smart constructor.
data OrdersCustomBatchRequestEntryReturnLineItem = OrdersCustomBatchRequestEntryReturnLineItem
    { _ocbrerliQuantity   :: !(Maybe Word32)
    , _ocbrerliLineItemId :: !(Maybe Text)
    , _ocbrerliReason     :: !(Maybe Text)
    , _ocbrerliReasonText :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryReturnLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrerliQuantity'
--
-- * 'ocbrerliLineItemId'
--
-- * 'ocbrerliReason'
--
-- * 'ocbrerliReasonText'
ordersCustomBatchRequestEntryReturnLineItem
    :: OrdersCustomBatchRequestEntryReturnLineItem
ordersCustomBatchRequestEntryReturnLineItem =
    OrdersCustomBatchRequestEntryReturnLineItem
    { _ocbrerliQuantity = Nothing
    , _ocbrerliLineItemId = Nothing
    , _ocbrerliReason = Nothing
    , _ocbrerliReasonText = Nothing
    }

-- | The quantity to return.
ocbrerliQuantity :: Lens' OrdersCustomBatchRequestEntryReturnLineItem (Maybe Word32)
ocbrerliQuantity
  = lens _ocbrerliQuantity
      (\ s a -> s{_ocbrerliQuantity = a})

-- | The ID of the line item to return.
ocbrerliLineItemId :: Lens' OrdersCustomBatchRequestEntryReturnLineItem (Maybe Text)
ocbrerliLineItemId
  = lens _ocbrerliLineItemId
      (\ s a -> s{_ocbrerliLineItemId = a})

-- | The reason for the return.
ocbrerliReason :: Lens' OrdersCustomBatchRequestEntryReturnLineItem (Maybe Text)
ocbrerliReason
  = lens _ocbrerliReason
      (\ s a -> s{_ocbrerliReason = a})

-- | The explanation of the reason.
ocbrerliReasonText :: Lens' OrdersCustomBatchRequestEntryReturnLineItem (Maybe Text)
ocbrerliReasonText
  = lens _ocbrerliReasonText
      (\ s a -> s{_ocbrerliReasonText = a})

--
-- /See:/ 'ordersCustomBatchRequestEntryShipLineItems' smart constructor.
data OrdersCustomBatchRequestEntryShipLineItems = OrdersCustomBatchRequestEntryShipLineItems
    { _ocbresliCarrier    :: !(Maybe Text)
    , _ocbresliTrackingId :: !(Maybe Text)
    , _ocbresliShipmentId :: !(Maybe Text)
    , _ocbresliLineItems  :: !(Maybe [Maybe OrderShipmentLineItemShipment])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryShipLineItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbresliCarrier'
--
-- * 'ocbresliTrackingId'
--
-- * 'ocbresliShipmentId'
--
-- * 'ocbresliLineItems'
ordersCustomBatchRequestEntryShipLineItems
    :: OrdersCustomBatchRequestEntryShipLineItems
ordersCustomBatchRequestEntryShipLineItems =
    OrdersCustomBatchRequestEntryShipLineItems
    { _ocbresliCarrier = Nothing
    , _ocbresliTrackingId = Nothing
    , _ocbresliShipmentId = Nothing
    , _ocbresliLineItems = Nothing
    }

-- | The carrier handling the shipment.
ocbresliCarrier :: Lens' OrdersCustomBatchRequestEntryShipLineItems (Maybe Text)
ocbresliCarrier
  = lens _ocbresliCarrier
      (\ s a -> s{_ocbresliCarrier = a})

-- | The tracking id for the shipment.
ocbresliTrackingId :: Lens' OrdersCustomBatchRequestEntryShipLineItems (Maybe Text)
ocbresliTrackingId
  = lens _ocbresliTrackingId
      (\ s a -> s{_ocbresliTrackingId = a})

-- | The ID of the shipment.
ocbresliShipmentId :: Lens' OrdersCustomBatchRequestEntryShipLineItems (Maybe Text)
ocbresliShipmentId
  = lens _ocbresliShipmentId
      (\ s a -> s{_ocbresliShipmentId = a})

-- | Line items to ship.
ocbresliLineItems :: Lens' OrdersCustomBatchRequestEntryShipLineItems [Maybe OrderShipmentLineItemShipment]
ocbresliLineItems
  = lens _ocbresliLineItems
      (\ s a -> s{_ocbresliLineItems = a})
      . _Default
      . _Coerce

--
-- /See:/ 'ordersCustomBatchRequestEntryUpdateShipment' smart constructor.
data OrdersCustomBatchRequestEntryUpdateShipment = OrdersCustomBatchRequestEntryUpdateShipment
    { _ocbreusCarrier    :: !(Maybe Text)
    , _ocbreusStatus     :: !(Maybe Text)
    , _ocbreusTrackingId :: !(Maybe Text)
    , _ocbreusShipmentId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryUpdateShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbreusCarrier'
--
-- * 'ocbreusStatus'
--
-- * 'ocbreusTrackingId'
--
-- * 'ocbreusShipmentId'
ordersCustomBatchRequestEntryUpdateShipment
    :: OrdersCustomBatchRequestEntryUpdateShipment
ordersCustomBatchRequestEntryUpdateShipment =
    OrdersCustomBatchRequestEntryUpdateShipment
    { _ocbreusCarrier = Nothing
    , _ocbreusStatus = Nothing
    , _ocbreusTrackingId = Nothing
    , _ocbreusShipmentId = Nothing
    }

-- | The carrier handling the shipment. Not updated if missing.
ocbreusCarrier :: Lens' OrdersCustomBatchRequestEntryUpdateShipment (Maybe Text)
ocbreusCarrier
  = lens _ocbreusCarrier
      (\ s a -> s{_ocbreusCarrier = a})

-- | New status for the shipment. Not updated if missing.
ocbreusStatus :: Lens' OrdersCustomBatchRequestEntryUpdateShipment (Maybe Text)
ocbreusStatus
  = lens _ocbreusStatus
      (\ s a -> s{_ocbreusStatus = a})

-- | The tracking id for the shipment. Not updated if missing.
ocbreusTrackingId :: Lens' OrdersCustomBatchRequestEntryUpdateShipment (Maybe Text)
ocbreusTrackingId
  = lens _ocbreusTrackingId
      (\ s a -> s{_ocbreusTrackingId = a})

-- | The ID of the shipment.
ocbreusShipmentId :: Lens' OrdersCustomBatchRequestEntryUpdateShipment (Maybe Text)
ocbreusShipmentId
  = lens _ocbreusShipmentId
      (\ s a -> s{_ocbreusShipmentId = a})

--
-- /See:/ 'ordersCustomBatchResponse' smart constructor.
data OrdersCustomBatchResponse = OrdersCustomBatchResponse
    { _ocbrEntries :: !(Maybe [Maybe OrdersCustomBatchResponseEntry])
    , _ocbrKind    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrEntries'
--
-- * 'ocbrKind'
ordersCustomBatchResponse
    :: OrdersCustomBatchResponse
ordersCustomBatchResponse =
    OrdersCustomBatchResponse
    { _ocbrEntries = Nothing
    , _ocbrKind = "content#ordersCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
ocbrEntries :: Lens' OrdersCustomBatchResponse [Maybe OrdersCustomBatchResponseEntry]
ocbrEntries
  = lens _ocbrEntries (\ s a -> s{_ocbrEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCustomBatchResponse\".
ocbrKind :: Lens' OrdersCustomBatchResponse Text
ocbrKind = lens _ocbrKind (\ s a -> s{_ocbrKind = a})

--
-- /See:/ 'ordersCustomBatchResponseEntry' smart constructor.
data OrdersCustomBatchResponseEntry = OrdersCustomBatchResponseEntry
    { _ocbreKind            :: !Text
    , _ocbreExecutionStatus :: !(Maybe Text)
    , _ocbreErrors          :: !(Maybe (Maybe Errors))
    , _ocbreOrder           :: !(Maybe (Maybe Order))
    , _ocbreBatchId         :: !(Maybe Word32)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbreKind'
--
-- * 'ocbreExecutionStatus'
--
-- * 'ocbreErrors'
--
-- * 'ocbreOrder'
--
-- * 'ocbreBatchId'
ordersCustomBatchResponseEntry
    :: OrdersCustomBatchResponseEntry
ordersCustomBatchResponseEntry =
    OrdersCustomBatchResponseEntry
    { _ocbreKind = "content#ordersCustomBatchResponseEntry"
    , _ocbreExecutionStatus = Nothing
    , _ocbreErrors = Nothing
    , _ocbreOrder = Nothing
    , _ocbreBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCustomBatchResponseEntry\".
ocbreKind :: Lens' OrdersCustomBatchResponseEntry Text
ocbreKind
  = lens _ocbreKind (\ s a -> s{_ocbreKind = a})

-- | The status of the execution. Only defined if the method is not get or
-- getByMerchantOrderId and if the request was successful.
ocbreExecutionStatus :: Lens' OrdersCustomBatchResponseEntry (Maybe Text)
ocbreExecutionStatus
  = lens _ocbreExecutionStatus
      (\ s a -> s{_ocbreExecutionStatus = a})

-- | A list of errors defined if and only if the request failed.
ocbreErrors :: Lens' OrdersCustomBatchResponseEntry (Maybe (Maybe Errors))
ocbreErrors
  = lens _ocbreErrors (\ s a -> s{_ocbreErrors = a})

-- | The retrieved order. Only defined if the method is get and if the
-- request was successful.
ocbreOrder :: Lens' OrdersCustomBatchResponseEntry (Maybe (Maybe Order))
ocbreOrder
  = lens _ocbreOrder (\ s a -> s{_ocbreOrder = a})

-- | The ID of the request entry this entry responds to.
ocbreBatchId :: Lens' OrdersCustomBatchResponseEntry (Maybe Word32)
ocbreBatchId
  = lens _ocbreBatchId (\ s a -> s{_ocbreBatchId = a})

--
-- /See:/ 'ordersGetByMerchantOrderIdResponse' smart constructor.
data OrdersGetByMerchantOrderIdResponse = OrdersGetByMerchantOrderIdResponse
    { _ogbmoirKind  :: !Text
    , _ogbmoirOrder :: !(Maybe (Maybe Order))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGetByMerchantOrderIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogbmoirKind'
--
-- * 'ogbmoirOrder'
ordersGetByMerchantOrderIdResponse
    :: OrdersGetByMerchantOrderIdResponse
ordersGetByMerchantOrderIdResponse =
    OrdersGetByMerchantOrderIdResponse
    { _ogbmoirKind = "content#ordersGetByMerchantOrderIdResponse"
    , _ogbmoirOrder = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersGetByMerchantOrderIdResponse\".
ogbmoirKind :: Lens' OrdersGetByMerchantOrderIdResponse Text
ogbmoirKind
  = lens _ogbmoirKind (\ s a -> s{_ogbmoirKind = a})

-- | The requested order.
ogbmoirOrder :: Lens' OrdersGetByMerchantOrderIdResponse (Maybe (Maybe Order))
ogbmoirOrder
  = lens _ogbmoirOrder (\ s a -> s{_ogbmoirOrder = a})

--
-- /See:/ 'ordersGetTestOrderTemplateResponse' smart constructor.
data OrdersGetTestOrderTemplateResponse = OrdersGetTestOrderTemplateResponse
    { _ogtotrKind     :: !Text
    , _ogtotrTemplate :: !(Maybe (Maybe TestOrder))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersGetTestOrderTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogtotrKind'
--
-- * 'ogtotrTemplate'
ordersGetTestOrderTemplateResponse
    :: OrdersGetTestOrderTemplateResponse
ordersGetTestOrderTemplateResponse =
    OrdersGetTestOrderTemplateResponse
    { _ogtotrKind = "content#ordersGetTestOrderTemplateResponse"
    , _ogtotrTemplate = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersGetTestOrderTemplateResponse\".
ogtotrKind :: Lens' OrdersGetTestOrderTemplateResponse Text
ogtotrKind
  = lens _ogtotrKind (\ s a -> s{_ogtotrKind = a})

-- | The requested test order template.
ogtotrTemplate :: Lens' OrdersGetTestOrderTemplateResponse (Maybe (Maybe TestOrder))
ogtotrTemplate
  = lens _ogtotrTemplate
      (\ s a -> s{_ogtotrTemplate = a})

--
-- /See:/ 'ordersListResponse' smart constructor.
data OrdersListResponse = OrdersListResponse
    { _olrNextPageToken :: !(Maybe Text)
    , _olrKind          :: !Text
    , _olrResources     :: !(Maybe [Maybe Order])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olrNextPageToken'
--
-- * 'olrKind'
--
-- * 'olrResources'
ordersListResponse
    :: OrdersListResponse
ordersListResponse =
    OrdersListResponse
    { _olrNextPageToken = Nothing
    , _olrKind = "content#ordersListResponse"
    , _olrResources = Nothing
    }

-- | The token for the retrieval of the next page of orders.
olrNextPageToken :: Lens' OrdersListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersListResponse\".
olrKind :: Lens' OrdersListResponse Text
olrKind = lens _olrKind (\ s a -> s{_olrKind = a})

olrResources :: Lens' OrdersListResponse [Maybe Order]
olrResources
  = lens _olrResources (\ s a -> s{_olrResources = a})
      . _Default
      . _Coerce

--
-- /See:/ 'ordersRefundRequest' smart constructor.
data OrdersRefundRequest = OrdersRefundRequest
    { _orrAmount      :: !(Maybe (Maybe Price))
    , _orrReason      :: !(Maybe Text)
    , _orrOperationId :: !(Maybe Text)
    , _orrReasonText  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersRefundRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrAmount'
--
-- * 'orrReason'
--
-- * 'orrOperationId'
--
-- * 'orrReasonText'
ordersRefundRequest
    :: OrdersRefundRequest
ordersRefundRequest =
    OrdersRefundRequest
    { _orrAmount = Nothing
    , _orrReason = Nothing
    , _orrOperationId = Nothing
    , _orrReasonText = Nothing
    }

-- | The amount that is refunded.
orrAmount :: Lens' OrdersRefundRequest (Maybe (Maybe Price))
orrAmount
  = lens _orrAmount (\ s a -> s{_orrAmount = a})

-- | The reason for the refund.
orrReason :: Lens' OrdersRefundRequest (Maybe Text)
orrReason
  = lens _orrReason (\ s a -> s{_orrReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
orrOperationId :: Lens' OrdersRefundRequest (Maybe Text)
orrOperationId
  = lens _orrOperationId
      (\ s a -> s{_orrOperationId = a})

-- | The explanation of the reason.
orrReasonText :: Lens' OrdersRefundRequest (Maybe Text)
orrReasonText
  = lens _orrReasonText
      (\ s a -> s{_orrReasonText = a})

--
-- /See:/ 'ordersRefundResponse' smart constructor.
data OrdersRefundResponse = OrdersRefundResponse
    { _orrKind            :: !Text
    , _orrExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersRefundResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrKind'
--
-- * 'orrExecutionStatus'
ordersRefundResponse
    :: OrdersRefundResponse
ordersRefundResponse =
    OrdersRefundResponse
    { _orrKind = "content#ordersRefundResponse"
    , _orrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersRefundResponse\".
orrKind :: Lens' OrdersRefundResponse Text
orrKind = lens _orrKind (\ s a -> s{_orrKind = a})

-- | The status of the execution.
orrExecutionStatus :: Lens' OrdersRefundResponse (Maybe Text)
orrExecutionStatus
  = lens _orrExecutionStatus
      (\ s a -> s{_orrExecutionStatus = a})

--
-- /See:/ 'ordersReturnLineItemRequest' smart constructor.
data OrdersReturnLineItemRequest = OrdersReturnLineItemRequest
    { _orlirQuantity    :: !(Maybe Word32)
    , _orlirLineItemId  :: !(Maybe Text)
    , _orlirReason      :: !(Maybe Text)
    , _orlirOperationId :: !(Maybe Text)
    , _orlirReasonText  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersReturnLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orlirQuantity'
--
-- * 'orlirLineItemId'
--
-- * 'orlirReason'
--
-- * 'orlirOperationId'
--
-- * 'orlirReasonText'
ordersReturnLineItemRequest
    :: OrdersReturnLineItemRequest
ordersReturnLineItemRequest =
    OrdersReturnLineItemRequest
    { _orlirQuantity = Nothing
    , _orlirLineItemId = Nothing
    , _orlirReason = Nothing
    , _orlirOperationId = Nothing
    , _orlirReasonText = Nothing
    }

-- | The quantity to return.
orlirQuantity :: Lens' OrdersReturnLineItemRequest (Maybe Word32)
orlirQuantity
  = lens _orlirQuantity
      (\ s a -> s{_orlirQuantity = a})

-- | The ID of the line item to return.
orlirLineItemId :: Lens' OrdersReturnLineItemRequest (Maybe Text)
orlirLineItemId
  = lens _orlirLineItemId
      (\ s a -> s{_orlirLineItemId = a})

-- | The reason for the return.
orlirReason :: Lens' OrdersReturnLineItemRequest (Maybe Text)
orlirReason
  = lens _orlirReason (\ s a -> s{_orlirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
orlirOperationId :: Lens' OrdersReturnLineItemRequest (Maybe Text)
orlirOperationId
  = lens _orlirOperationId
      (\ s a -> s{_orlirOperationId = a})

-- | The explanation of the reason.
orlirReasonText :: Lens' OrdersReturnLineItemRequest (Maybe Text)
orlirReasonText
  = lens _orlirReasonText
      (\ s a -> s{_orlirReasonText = a})

--
-- /See:/ 'ordersReturnLineItemResponse' smart constructor.
data OrdersReturnLineItemResponse = OrdersReturnLineItemResponse
    { _orlirKind            :: !Text
    , _orlirExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersReturnLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orlirKind'
--
-- * 'orlirExecutionStatus'
ordersReturnLineItemResponse
    :: OrdersReturnLineItemResponse
ordersReturnLineItemResponse =
    OrdersReturnLineItemResponse
    { _orlirKind = "content#ordersReturnLineItemResponse"
    , _orlirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersReturnLineItemResponse\".
orlirKind :: Lens' OrdersReturnLineItemResponse Text
orlirKind
  = lens _orlirKind (\ s a -> s{_orlirKind = a})

-- | The status of the execution.
orlirExecutionStatus :: Lens' OrdersReturnLineItemResponse (Maybe Text)
orlirExecutionStatus
  = lens _orlirExecutionStatus
      (\ s a -> s{_orlirExecutionStatus = a})

--
-- /See:/ 'ordersShipLineItemsRequest' smart constructor.
data OrdersShipLineItemsRequest = OrdersShipLineItemsRequest
    { _oslirCarrier     :: !(Maybe Text)
    , _oslirTrackingId  :: !(Maybe Text)
    , _oslirShipmentId  :: !(Maybe Text)
    , _oslirLineItems   :: !(Maybe [Maybe OrderShipmentLineItemShipment])
    , _oslirOperationId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersShipLineItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslirCarrier'
--
-- * 'oslirTrackingId'
--
-- * 'oslirShipmentId'
--
-- * 'oslirLineItems'
--
-- * 'oslirOperationId'
ordersShipLineItemsRequest
    :: OrdersShipLineItemsRequest
ordersShipLineItemsRequest =
    OrdersShipLineItemsRequest
    { _oslirCarrier = Nothing
    , _oslirTrackingId = Nothing
    , _oslirShipmentId = Nothing
    , _oslirLineItems = Nothing
    , _oslirOperationId = Nothing
    }

-- | The carrier handling the shipment.
oslirCarrier :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirCarrier
  = lens _oslirCarrier (\ s a -> s{_oslirCarrier = a})

-- | The tracking id for the shipment.
oslirTrackingId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirTrackingId
  = lens _oslirTrackingId
      (\ s a -> s{_oslirTrackingId = a})

-- | The ID of the shipment.
oslirShipmentId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirShipmentId
  = lens _oslirShipmentId
      (\ s a -> s{_oslirShipmentId = a})

-- | Line items to ship.
oslirLineItems :: Lens' OrdersShipLineItemsRequest [Maybe OrderShipmentLineItemShipment]
oslirLineItems
  = lens _oslirLineItems
      (\ s a -> s{_oslirLineItems = a})
      . _Default
      . _Coerce

-- | The ID of the operation. Unique across all operations for a given order.
oslirOperationId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirOperationId
  = lens _oslirOperationId
      (\ s a -> s{_oslirOperationId = a})

--
-- /See:/ 'ordersShipLineItemsResponse' smart constructor.
data OrdersShipLineItemsResponse = OrdersShipLineItemsResponse
    { _oslirKind            :: !Text
    , _oslirExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersShipLineItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslirKind'
--
-- * 'oslirExecutionStatus'
ordersShipLineItemsResponse
    :: OrdersShipLineItemsResponse
ordersShipLineItemsResponse =
    OrdersShipLineItemsResponse
    { _oslirKind = "content#ordersShipLineItemsResponse"
    , _oslirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersShipLineItemsResponse\".
oslirKind :: Lens' OrdersShipLineItemsResponse Text
oslirKind
  = lens _oslirKind (\ s a -> s{_oslirKind = a})

-- | The status of the execution.
oslirExecutionStatus :: Lens' OrdersShipLineItemsResponse (Maybe Text)
oslirExecutionStatus
  = lens _oslirExecutionStatus
      (\ s a -> s{_oslirExecutionStatus = a})

--
-- /See:/ 'ordersUpdateMerchantOrderIdRequest' smart constructor.
data OrdersUpdateMerchantOrderIdRequest = OrdersUpdateMerchantOrderIdRequest
    { _oumoirMerchantOrderId :: !(Maybe Text)
    , _oumoirOperationId     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdateMerchantOrderIdRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oumoirMerchantOrderId'
--
-- * 'oumoirOperationId'
ordersUpdateMerchantOrderIdRequest
    :: OrdersUpdateMerchantOrderIdRequest
ordersUpdateMerchantOrderIdRequest =
    OrdersUpdateMerchantOrderIdRequest
    { _oumoirMerchantOrderId = Nothing
    , _oumoirOperationId = Nothing
    }

-- | The merchant order id to be assigned to the order. Must be unique per
-- merchant.
oumoirMerchantOrderId :: Lens' OrdersUpdateMerchantOrderIdRequest (Maybe Text)
oumoirMerchantOrderId
  = lens _oumoirMerchantOrderId
      (\ s a -> s{_oumoirMerchantOrderId = a})

-- | The ID of the operation. Unique across all operations for a given order.
oumoirOperationId :: Lens' OrdersUpdateMerchantOrderIdRequest (Maybe Text)
oumoirOperationId
  = lens _oumoirOperationId
      (\ s a -> s{_oumoirOperationId = a})

--
-- /See:/ 'ordersUpdateMerchantOrderIdResponse' smart constructor.
data OrdersUpdateMerchantOrderIdResponse = OrdersUpdateMerchantOrderIdResponse
    { _oumoirKind            :: !Text
    , _oumoirExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdateMerchantOrderIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oumoirKind'
--
-- * 'oumoirExecutionStatus'
ordersUpdateMerchantOrderIdResponse
    :: OrdersUpdateMerchantOrderIdResponse
ordersUpdateMerchantOrderIdResponse =
    OrdersUpdateMerchantOrderIdResponse
    { _oumoirKind = "content#ordersUpdateMerchantOrderIdResponse"
    , _oumoirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersUpdateMerchantOrderIdResponse\".
oumoirKind :: Lens' OrdersUpdateMerchantOrderIdResponse Text
oumoirKind
  = lens _oumoirKind (\ s a -> s{_oumoirKind = a})

-- | The status of the execution.
oumoirExecutionStatus :: Lens' OrdersUpdateMerchantOrderIdResponse (Maybe Text)
oumoirExecutionStatus
  = lens _oumoirExecutionStatus
      (\ s a -> s{_oumoirExecutionStatus = a})

--
-- /See:/ 'ordersUpdateShipmentRequest' smart constructor.
data OrdersUpdateShipmentRequest = OrdersUpdateShipmentRequest
    { _ousrCarrier     :: !(Maybe Text)
    , _ousrStatus      :: !(Maybe Text)
    , _ousrTrackingId  :: !(Maybe Text)
    , _ousrShipmentId  :: !(Maybe Text)
    , _ousrOperationId :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdateShipmentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ousrCarrier'
--
-- * 'ousrStatus'
--
-- * 'ousrTrackingId'
--
-- * 'ousrShipmentId'
--
-- * 'ousrOperationId'
ordersUpdateShipmentRequest
    :: OrdersUpdateShipmentRequest
ordersUpdateShipmentRequest =
    OrdersUpdateShipmentRequest
    { _ousrCarrier = Nothing
    , _ousrStatus = Nothing
    , _ousrTrackingId = Nothing
    , _ousrShipmentId = Nothing
    , _ousrOperationId = Nothing
    }

-- | The carrier handling the shipment. Not updated if missing.
ousrCarrier :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrCarrier
  = lens _ousrCarrier (\ s a -> s{_ousrCarrier = a})

-- | New status for the shipment. Not updated if missing.
ousrStatus :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrStatus
  = lens _ousrStatus (\ s a -> s{_ousrStatus = a})

-- | The tracking id for the shipment. Not updated if missing.
ousrTrackingId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrTrackingId
  = lens _ousrTrackingId
      (\ s a -> s{_ousrTrackingId = a})

-- | The ID of the shipment.
ousrShipmentId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrShipmentId
  = lens _ousrShipmentId
      (\ s a -> s{_ousrShipmentId = a})

-- | The ID of the operation. Unique across all operations for a given order.
ousrOperationId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrOperationId
  = lens _ousrOperationId
      (\ s a -> s{_ousrOperationId = a})

--
-- /See:/ 'ordersUpdateShipmentResponse' smart constructor.
data OrdersUpdateShipmentResponse = OrdersUpdateShipmentResponse
    { _ousrKind            :: !Text
    , _ousrExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersUpdateShipmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ousrKind'
--
-- * 'ousrExecutionStatus'
ordersUpdateShipmentResponse
    :: OrdersUpdateShipmentResponse
ordersUpdateShipmentResponse =
    OrdersUpdateShipmentResponse
    { _ousrKind = "content#ordersUpdateShipmentResponse"
    , _ousrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersUpdateShipmentResponse\".
ousrKind :: Lens' OrdersUpdateShipmentResponse Text
ousrKind = lens _ousrKind (\ s a -> s{_ousrKind = a})

-- | The status of the execution.
ousrExecutionStatus :: Lens' OrdersUpdateShipmentResponse (Maybe Text)
ousrExecutionStatus
  = lens _ousrExecutionStatus
      (\ s a -> s{_ousrExecutionStatus = a})

--
-- /See:/ 'price' smart constructor.
data Price = Price
    { _pValue    :: !(Maybe Text)
    , _pCurrency :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pValue'
--
-- * 'pCurrency'
price
    :: Price
price =
    Price
    { _pValue = Nothing
    , _pCurrency = Nothing
    }

-- | The price represented as a number.
pValue :: Lens' Price (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | The currency of the price.
pCurrency :: Lens' Price (Maybe Text)
pCurrency
  = lens _pCurrency (\ s a -> s{_pCurrency = a})

--
-- /See:/ 'testOrder' smart constructor.
data TestOrder = TestOrder
    { _toKind                      :: !Text
    , _toLineItems                 :: !(Maybe [Maybe TestOrderLineItem])
    , _toShippingOption            :: !(Maybe Text)
    , _toPredefinedDeliveryAddress :: !(Maybe Text)
    , _toShippingCostTax           :: !(Maybe (Maybe Price))
    , _toCustomer                  :: !(Maybe (Maybe TestOrderCustomer))
    , _toPaymentMethod             :: !(Maybe (Maybe TestOrderPaymentMethod))
    , _toShippingCost              :: !(Maybe (Maybe Price))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toKind'
--
-- * 'toLineItems'
--
-- * 'toShippingOption'
--
-- * 'toPredefinedDeliveryAddress'
--
-- * 'toShippingCostTax'
--
-- * 'toCustomer'
--
-- * 'toPaymentMethod'
--
-- * 'toShippingCost'
testOrder
    :: TestOrder
testOrder =
    TestOrder
    { _toKind = "content#testOrder"
    , _toLineItems = Nothing
    , _toShippingOption = Nothing
    , _toPredefinedDeliveryAddress = Nothing
    , _toShippingCostTax = Nothing
    , _toCustomer = Nothing
    , _toPaymentMethod = Nothing
    , _toShippingCost = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#testOrder\".
toKind :: Lens' TestOrder Text
toKind = lens _toKind (\ s a -> s{_toKind = a})

-- | Line items that are ordered. At least one line item must be provided.
toLineItems :: Lens' TestOrder [Maybe TestOrderLineItem]
toLineItems
  = lens _toLineItems (\ s a -> s{_toLineItems = a}) .
      _Default
      . _Coerce

-- | The requested shipping option.
toShippingOption :: Lens' TestOrder (Maybe Text)
toShippingOption
  = lens _toShippingOption
      (\ s a -> s{_toShippingOption = a})

-- | Identifier of one of the predefined delivery addresses for the delivery.
toPredefinedDeliveryAddress :: Lens' TestOrder (Maybe Text)
toPredefinedDeliveryAddress
  = lens _toPredefinedDeliveryAddress
      (\ s a -> s{_toPredefinedDeliveryAddress = a})

-- | The tax for the total shipping cost.
toShippingCostTax :: Lens' TestOrder (Maybe (Maybe Price))
toShippingCostTax
  = lens _toShippingCostTax
      (\ s a -> s{_toShippingCostTax = a})

-- | The details of the customer who placed the order.
toCustomer :: Lens' TestOrder (Maybe (Maybe TestOrderCustomer))
toCustomer
  = lens _toCustomer (\ s a -> s{_toCustomer = a})

-- | The details of the payment method.
toPaymentMethod :: Lens' TestOrder (Maybe (Maybe TestOrderPaymentMethod))
toPaymentMethod
  = lens _toPaymentMethod
      (\ s a -> s{_toPaymentMethod = a})

-- | The total cost of shipping for all items.
toShippingCost :: Lens' TestOrder (Maybe (Maybe Price))
toShippingCost
  = lens _toShippingCost
      (\ s a -> s{_toShippingCost = a})

--
-- /See:/ 'testOrderCustomer' smart constructor.
data TestOrderCustomer = TestOrderCustomer
    { _tocFullName                    :: !(Maybe Text)
    , _tocEmail                       :: !(Maybe Text)
    , _tocExplicitMarketingPreference :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestOrderCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tocFullName'
--
-- * 'tocEmail'
--
-- * 'tocExplicitMarketingPreference'
testOrderCustomer
    :: TestOrderCustomer
testOrderCustomer =
    TestOrderCustomer
    { _tocFullName = Nothing
    , _tocEmail = Nothing
    , _tocExplicitMarketingPreference = Nothing
    }

-- | Full name of the customer.
tocFullName :: Lens' TestOrderCustomer (Maybe Text)
tocFullName
  = lens _tocFullName (\ s a -> s{_tocFullName = a})

-- | Email address of the customer.
tocEmail :: Lens' TestOrderCustomer (Maybe Text)
tocEmail = lens _tocEmail (\ s a -> s{_tocEmail = a})

-- | If set, this indicates the user had a choice to opt in or out of
-- providing marketing rights to the merchant. If unset, this indicates the
-- user has already made this choice in a previous purchase, and was thus
-- not shown the marketing right opt in\/out checkbox during the Purchases
-- on Google checkout flow. Optional.
tocExplicitMarketingPreference :: Lens' TestOrderCustomer (Maybe Bool)
tocExplicitMarketingPreference
  = lens _tocExplicitMarketingPreference
      (\ s a -> s{_tocExplicitMarketingPreference = a})

--
-- /See:/ 'testOrderLineItem' smart constructor.
data TestOrderLineItem = TestOrderLineItem
    { _toliQuantityOrdered :: !(Maybe Word32)
    , _toliReturnInfo      :: !(Maybe (Maybe OrderLineItemReturnInfo))
    , _toliShippingDetails :: !(Maybe (Maybe OrderLineItemShippingDetails))
    , _toliProduct         :: !(Maybe (Maybe TestOrderLineItemProduct))
    , _toliUnitTax         :: !(Maybe (Maybe Price))
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestOrderLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toliQuantityOrdered'
--
-- * 'toliReturnInfo'
--
-- * 'toliShippingDetails'
--
-- * 'toliProduct'
--
-- * 'toliUnitTax'
testOrderLineItem
    :: TestOrderLineItem
testOrderLineItem =
    TestOrderLineItem
    { _toliQuantityOrdered = Nothing
    , _toliReturnInfo = Nothing
    , _toliShippingDetails = Nothing
    , _toliProduct = Nothing
    , _toliUnitTax = Nothing
    }

-- | Number of items ordered.
toliQuantityOrdered :: Lens' TestOrderLineItem (Maybe Word32)
toliQuantityOrdered
  = lens _toliQuantityOrdered
      (\ s a -> s{_toliQuantityOrdered = a})

-- | Details of the return policy for the line item.
toliReturnInfo :: Lens' TestOrderLineItem (Maybe (Maybe OrderLineItemReturnInfo))
toliReturnInfo
  = lens _toliReturnInfo
      (\ s a -> s{_toliReturnInfo = a})

-- | Details of the requested shipping for the line item.
toliShippingDetails :: Lens' TestOrderLineItem (Maybe (Maybe OrderLineItemShippingDetails))
toliShippingDetails
  = lens _toliShippingDetails
      (\ s a -> s{_toliShippingDetails = a})

-- | Product data from the time of the order placement.
toliProduct :: Lens' TestOrderLineItem (Maybe (Maybe TestOrderLineItemProduct))
toliProduct
  = lens _toliProduct (\ s a -> s{_toliProduct = a})

-- | Unit tax for the line item.
toliUnitTax :: Lens' TestOrderLineItem (Maybe (Maybe Price))
toliUnitTax
  = lens _toliUnitTax (\ s a -> s{_toliUnitTax = a})

--
-- /See:/ 'testOrderLineItemProduct' smart constructor.
data TestOrderLineItemProduct = TestOrderLineItemProduct
    { _tolipImageLink         :: !(Maybe Text)
    , _tolipChannel           :: !(Maybe Text)
    , _tolipBrand             :: !(Maybe Text)
    , _tolipTargetCountry     :: !(Maybe Text)
    , _tolipGtin              :: !(Maybe Text)
    , _tolipItemGroupId       :: !(Maybe Text)
    , _tolipOfferId           :: !(Maybe Text)
    , _tolipPrice             :: !(Maybe (Maybe Price))
    , _tolipVariantAttributes :: !(Maybe [Maybe OrderLineItemProductVariantAttribute])
    , _tolipTitle             :: !(Maybe Text)
    , _tolipContentLanguage   :: !(Maybe Text)
    , _tolipMpn               :: !(Maybe Text)
    , _tolipCondition         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestOrderLineItemProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tolipImageLink'
--
-- * 'tolipChannel'
--
-- * 'tolipBrand'
--
-- * 'tolipTargetCountry'
--
-- * 'tolipGtin'
--
-- * 'tolipItemGroupId'
--
-- * 'tolipOfferId'
--
-- * 'tolipPrice'
--
-- * 'tolipVariantAttributes'
--
-- * 'tolipTitle'
--
-- * 'tolipContentLanguage'
--
-- * 'tolipMpn'
--
-- * 'tolipCondition'
testOrderLineItemProduct
    :: TestOrderLineItemProduct
testOrderLineItemProduct =
    TestOrderLineItemProduct
    { _tolipImageLink = Nothing
    , _tolipChannel = Nothing
    , _tolipBrand = Nothing
    , _tolipTargetCountry = Nothing
    , _tolipGtin = Nothing
    , _tolipItemGroupId = Nothing
    , _tolipOfferId = Nothing
    , _tolipPrice = Nothing
    , _tolipVariantAttributes = Nothing
    , _tolipTitle = Nothing
    , _tolipContentLanguage = Nothing
    , _tolipMpn = Nothing
    , _tolipCondition = Nothing
    }

-- | URL of an image of the item.
tolipImageLink :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipImageLink
  = lens _tolipImageLink
      (\ s a -> s{_tolipImageLink = a})

-- | The item\'s channel.
tolipChannel :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipChannel
  = lens _tolipChannel (\ s a -> s{_tolipChannel = a})

-- | Brand of the item.
tolipBrand :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipBrand
  = lens _tolipBrand (\ s a -> s{_tolipBrand = a})

-- | The CLDR territory code of the target country of the product.
tolipTargetCountry :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipTargetCountry
  = lens _tolipTargetCountry
      (\ s a -> s{_tolipTargetCountry = a})

-- | Global Trade Item Number (GTIN) of the item. Optional.
tolipGtin :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipGtin
  = lens _tolipGtin (\ s a -> s{_tolipGtin = a})

-- | Shared identifier for all variants of the same product. Optional.
tolipItemGroupId :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipItemGroupId
  = lens _tolipItemGroupId
      (\ s a -> s{_tolipItemGroupId = a})

-- | An identifier of the item.
tolipOfferId :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipOfferId
  = lens _tolipOfferId (\ s a -> s{_tolipOfferId = a})

-- | The price for the product.
tolipPrice :: Lens' TestOrderLineItemProduct (Maybe (Maybe Price))
tolipPrice
  = lens _tolipPrice (\ s a -> s{_tolipPrice = a})

-- | Variant attributes for the item. Optional.
tolipVariantAttributes :: Lens' TestOrderLineItemProduct [Maybe OrderLineItemProductVariantAttribute]
tolipVariantAttributes
  = lens _tolipVariantAttributes
      (\ s a -> s{_tolipVariantAttributes = a})
      . _Default
      . _Coerce

-- | The title of the product.
tolipTitle :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipTitle
  = lens _tolipTitle (\ s a -> s{_tolipTitle = a})

-- | The two-letter ISO 639-1 language code for the item.
tolipContentLanguage :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipContentLanguage
  = lens _tolipContentLanguage
      (\ s a -> s{_tolipContentLanguage = a})

-- | Manufacturer Part Number (MPN) of the item. Optional.
tolipMpn :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipMpn = lens _tolipMpn (\ s a -> s{_tolipMpn = a})

-- | Condition or state of the item.
tolipCondition :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipCondition
  = lens _tolipCondition
      (\ s a -> s{_tolipCondition = a})

--
-- /See:/ 'testOrderPaymentMethod' smart constructor.
data TestOrderPaymentMethod = TestOrderPaymentMethod
    { _topmExpirationMonth          :: !(Maybe Int32)
    , _topmExpirationYear           :: !(Maybe Int32)
    , _topmLastFourDigits           :: !(Maybe Text)
    , _topmType                     :: !(Maybe Text)
    , _topmPredefinedBillingAddress :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestOrderPaymentMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'topmExpirationMonth'
--
-- * 'topmExpirationYear'
--
-- * 'topmLastFourDigits'
--
-- * 'topmType'
--
-- * 'topmPredefinedBillingAddress'
testOrderPaymentMethod
    :: TestOrderPaymentMethod
testOrderPaymentMethod =
    TestOrderPaymentMethod
    { _topmExpirationMonth = Nothing
    , _topmExpirationYear = Nothing
    , _topmLastFourDigits = Nothing
    , _topmType = Nothing
    , _topmPredefinedBillingAddress = Nothing
    }

-- | The card expiration month (January = 1, February = 2 etc.).
topmExpirationMonth :: Lens' TestOrderPaymentMethod (Maybe Int32)
topmExpirationMonth
  = lens _topmExpirationMonth
      (\ s a -> s{_topmExpirationMonth = a})

-- | The card expiration year (4-digit, e.g. 2015).
topmExpirationYear :: Lens' TestOrderPaymentMethod (Maybe Int32)
topmExpirationYear
  = lens _topmExpirationYear
      (\ s a -> s{_topmExpirationYear = a})

-- | The last four digits of the card number.
topmLastFourDigits :: Lens' TestOrderPaymentMethod (Maybe Text)
topmLastFourDigits
  = lens _topmLastFourDigits
      (\ s a -> s{_topmLastFourDigits = a})

-- | The type of instrument. Note that real orders might have different
-- values than the four values accepted by createTestOrder.
topmType :: Lens' TestOrderPaymentMethod (Maybe Text)
topmType = lens _topmType (\ s a -> s{_topmType = a})

-- | The billing address.
topmPredefinedBillingAddress :: Lens' TestOrderPaymentMethod (Maybe Text)
topmPredefinedBillingAddress
  = lens _topmPredefinedBillingAddress
      (\ s a -> s{_topmPredefinedBillingAddress = a})
