{-# LANGUAGE DataKinds     #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.ShoppingContent
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Manage product items, inventory, and Merchant Center accounts for Google
-- Shopping.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference>
module Network.Google.ShoppingContent
    (
    -- * API
      ShoppingContentAPI
    , shoppingContentAPI
    , shoppingContentURL

    -- * Service Methods

    -- * REST Resources

    -- ** ContentOrdersAcknowledge
    , module Content.Orders.Acknowledge

    -- ** ContentOrdersAdvancetestorder
    , module Content.Orders.Advancetestorder

    -- ** ContentOrdersCancel
    , module Content.Orders.Cancel

    -- ** ContentOrdersCancellineitem
    , module Content.Orders.Cancellineitem

    -- ** ContentOrdersCreatetestorder
    , module Content.Orders.Createtestorder

    -- ** ContentOrdersCustombatch
    , module Content.Orders.Custombatch

    -- ** ContentOrdersGet
    , module Content.Orders.Get

    -- ** ContentOrdersGetbymerchantorderid
    , module Content.Orders.Getbymerchantorderid

    -- ** ContentOrdersGettestordertemplate
    , module Content.Orders.Gettestordertemplate

    -- ** ContentOrdersList
    , module Content.Orders.List

    -- ** ContentOrdersRefund
    , module Content.Orders.Refund

    -- ** ContentOrdersReturnlineitem
    , module Content.Orders.Returnlineitem

    -- ** ContentOrdersShiplineitems
    , module Content.Orders.Shiplineitems

    -- ** ContentOrdersUpdatemerchantorderid
    , module Content.Orders.Updatemerchantorderid

    -- ** ContentOrdersUpdateshipment
    , module Content.Orders.Updateshipment

    -- * Types

    -- ** TestOrderCustomer
    , TestOrderCustomer
    , testOrderCustomer
    , tocFullName
    , tocEmail
    , tocExplicitMarketingPreference

    -- ** OrdersUpdateMerchantOrderIdRequest
    , OrdersUpdateMerchantOrderIdRequest
    , ordersUpdateMerchantOrderIdRequest
    , oumoirMerchantOrderId
    , oumoirOperationId

    -- ** OrdersAdvanceTestOrderResponse
    , OrdersAdvanceTestOrderResponse
    , ordersAdvanceTestOrderResponse
    , oatorKind

    -- ** OrdersAcknowledgeRequest
    , OrdersAcknowledgeRequest
    , ordersAcknowledgeRequest
    , oarOperationId

    -- ** OrderReturn
    , OrderReturn
    , orderReturn
    , orQuantity
    , orActor
    , orReason
    , orCreationDate
    , orReasonText

    -- ** OrdersCustomBatchRequestEntry
    , OrdersCustomBatchRequestEntry
    , ordersCustomBatchRequestEntry
    , ocbreMerchantId
    , ocbreCancelLineItem
    , ocbreRefund
    , ocbreUpdateShipment
    , ocbreReturnLineItem
    , ocbreMerchantOrderId
    , ocbreMethod
    , ocbreShipLineItems
    , ocbreOperationId
    , ocbreOrderId
    , ocbreCancel
    , ocbreBatchId

    -- ** OrderLineItemShippingDetailsMethod
    , OrderLineItemShippingDetailsMethod
    , orderLineItemShippingDetailsMethod
    , olisdmCarrier
    , olisdmMethodName
    , olisdmMaxDaysInTransit
    , olisdmMinDaysInTransit

    -- ** OrdersCreateTestOrderResponse
    , OrdersCreateTestOrderResponse
    , ordersCreateTestOrderResponse
    , octorKind
    , octorOrderId

    -- ** OrdersRefundRequest
    , OrdersRefundRequest
    , ordersRefundRequest
    , orrAmount
    , orrReason
    , orrOperationId
    , orrReasonText

    -- ** OrdersCustomBatchRequestEntryCancelLineItem
    , OrdersCustomBatchRequestEntryCancelLineItem
    , ordersCustomBatchRequestEntryCancelLineItem
    , ocbrecliQuantity
    , ocbrecliLineItemId
    , ocbrecliReason
    , ocbrecliReasonText

    -- ** OrdersUpdateShipmentRequest
    , OrdersUpdateShipmentRequest
    , ordersUpdateShipmentRequest
    , ousrCarrier
    , ousrStatus
    , ousrTrackingId
    , ousrShipmentId
    , ousrOperationId

    -- ** TestOrderPaymentMethod
    , TestOrderPaymentMethod
    , testOrderPaymentMethod
    , topmExpirationMonth
    , topmExpirationYear
    , topmLastFourDigits
    , topmType
    , topmPredefinedBillingAddress

    -- ** OrdersReturnLineItemRequest
    , OrdersReturnLineItemRequest
    , ordersReturnLineItemRequest
    , orlirQuantity
    , orlirLineItemId
    , orlirReason
    , orlirOperationId
    , orlirReasonText

    -- ** OrdersCustomBatchRequestEntryShipLineItems
    , OrdersCustomBatchRequestEntryShipLineItems
    , ordersCustomBatchRequestEntryShipLineItems
    , ocbresliCarrier
    , ocbresliTrackingId
    , ocbresliShipmentId
    , ocbresliLineItems

    -- ** OrderLineItem
    , OrderLineItem
    , orderLineItem
    , oliQuantityOrdered
    , oliReturnInfo
    , oliQuantityDelivered
    , oliShippingDetails
    , oliQuantityPending
    , oliCancellations
    , oliQuantityCanceled
    , oliId
    , oliTax
    , oliPrice
    , oliQuantityShipped
    , oliQuantityReturned
    , oliProduct
    , oliReturns

    -- ** OrderShipmentLineItemShipment
    , OrderShipmentLineItemShipment
    , orderShipmentLineItemShipment
    , oslisQuantity
    , oslisLineItemId

    -- ** OrdersRefundResponse
    , OrdersRefundResponse
    , ordersRefundResponse
    , orrKind
    , orrExecutionStatus

    -- ** OrdersCreateTestOrderRequest
    , OrdersCreateTestOrderRequest
    , ordersCreateTestOrderRequest
    , octorTemplateName
    , octorTestOrder

    -- ** OrdersGetTestOrderTemplateResponse
    , OrdersGetTestOrderTemplateResponse
    , ordersGetTestOrderTemplateResponse
    , ogtotrKind
    , ogtotrTemplate

    -- ** Error
    , Error
    , error'
    , eDomain
    , eReason
    , eMessage

    -- ** OrdersCustomBatchRequest
    , OrdersCustomBatchRequest
    , ordersCustomBatchRequest
    , ocbrEntries

    -- ** OrdersShipLineItemsRequest
    , OrdersShipLineItemsRequest
    , ordersShipLineItemsRequest
    , oslirCarrier
    , oslirTrackingId
    , oslirShipmentId
    , oslirLineItems
    , oslirOperationId

    -- ** OrderShipment
    , OrderShipment
    , orderShipment
    , osCarrier
    , osStatus
    , osTrackingId
    , osLineItems
    , osId
    , osCreationDate
    , osDeliveryDate

    -- ** OrderLineItemReturnInfo
    , OrderLineItemReturnInfo
    , orderLineItemReturnInfo
    , oliriIsReturnable
    , oliriPolicyUrl
    , oliriDaysToReturn

    -- ** OrdersCancelLineItemRequest
    , OrdersCancelLineItemRequest
    , ordersCancelLineItemRequest
    , oclirQuantity
    , oclirLineItemId
    , oclirReason
    , oclirOperationId
    , oclirReasonText

    -- ** OrdersCustomBatchRequestEntryCancel
    , OrdersCustomBatchRequestEntryCancel
    , ordersCustomBatchRequestEntryCancel
    , ocbrecReason
    , ocbrecReasonText

    -- ** OrdersShipLineItemsResponse
    , OrdersShipLineItemsResponse
    , ordersShipLineItemsResponse
    , oslirKind
    , oslirExecutionStatus

    -- ** OrdersListResponse
    , OrdersListResponse
    , ordersListResponse
    , olrNextPageToken
    , olrKind
    , olrResources

    -- ** OrdersReturnLineItemResponse
    , OrdersReturnLineItemResponse
    , ordersReturnLineItemResponse
    , orlirKind
    , orlirExecutionStatus

    -- ** OrdersUpdateShipmentResponse
    , OrdersUpdateShipmentResponse
    , ordersUpdateShipmentResponse
    , ousrKind
    , ousrExecutionStatus

    -- ** OrdersCancelRequest
    , OrdersCancelRequest
    , ordersCancelRequest
    , ocrReason
    , ocrOperationId
    , ocrReasonText

    -- ** OrderCustomer
    , OrderCustomer
    , orderCustomer
    , ocFullName
    , ocEmail
    , ocExplicitMarketingPreference

    -- ** OrdersGetByMerchantOrderIdResponse
    , OrdersGetByMerchantOrderIdResponse
    , ordersGetByMerchantOrderIdResponse
    , ogbmoirKind
    , ogbmoirOrder

    -- ** OrderLineItemShippingDetails
    , OrderLineItemShippingDetails
    , orderLineItemShippingDetails
    , olisdShipByDate
    , olisdMethod
    , olisdDeliverByDate

    -- ** Price
    , Price
    , price
    , pValue
    , pCurrency

    -- ** OrderLineItemProductVariantAttribute
    , OrderLineItemProductVariantAttribute
    , orderLineItemProductVariantAttribute
    , olipvaDimension
    , olipvaValue

    -- ** OrdersCustomBatchResponseEntry
    , OrdersCustomBatchResponseEntry
    , ordersCustomBatchResponseEntry
    , oKind
    , oExecutionStatus
    , oErrors
    , oOrder
    , oBatchId

    -- ** TestOrderLineItemProduct
    , TestOrderLineItemProduct
    , testOrderLineItemProduct
    , tolipImageLink
    , tolipChannel
    , tolipBrand
    , tolipTargetCountry
    , tolipGtin
    , tolipItemGroupId
    , tolipOfferId
    , tolipPrice
    , tolipVariantAttributes
    , tolipTitle
    , tolipContentLanguage
    , tolipMpn
    , tolipCondition

    -- ** TestOrder
    , TestOrder
    , testOrder
    , toKind
    , toLineItems
    , toShippingOption
    , toPredefinedDeliveryAddress
    , toShippingCostTax
    , toCustomer
    , toPaymentMethod
    , toShippingCost

    -- ** OrderRefund
    , OrderRefund
    , orderRefund
    , oAmount
    , oActor
    , oReason
    , oCreationDate
    , oReasonText

    -- ** OrderDeliveryDetails
    , OrderDeliveryDetails
    , orderDeliveryDetails
    , oddAddress
    , oddPhoneNumber

    -- ** OrderAddress
    , OrderAddress
    , orderAddress
    , oaRecipientName
    , oaStreetAddress
    , oaCountry
    , oaPostalCode
    , oaLocality
    , oaIsPostOfficeBox
    , oaFullAddress
    , oaRegion

    -- ** OrdersCancelResponse
    , OrdersCancelResponse
    , ordersCancelResponse
    , ocrKind
    , ocrExecutionStatus

    -- ** TestOrderLineItem
    , TestOrderLineItem
    , testOrderLineItem
    , toliQuantityOrdered
    , toliReturnInfo
    , toliShippingDetails
    , toliProduct
    , toliUnitTax

    -- ** OrderPaymentMethod
    , OrderPaymentMethod
    , orderPaymentMethod
    , opmExpirationMonth
    , opmExpirationYear
    , opmPhoneNumber
    , opmBillingAddress
    , opmLastFourDigits
    , opmType

    -- ** Errors
    , Errors
    , errors
    , errCode
    , errMessage
    , errErrors

    -- ** OrdersCancelLineItemResponse
    , OrdersCancelLineItemResponse
    , ordersCancelLineItemResponse
    , oclirKind
    , oclirExecutionStatus

    -- ** OrdersCustomBatchRequestEntryUpdateShipment
    , OrdersCustomBatchRequestEntryUpdateShipment
    , ordersCustomBatchRequestEntryUpdateShipment
    , ocbreusCarrier
    , ocbreusStatus
    , ocbreusTrackingId
    , ocbreusShipmentId

    -- ** OrderLineItemProduct
    , OrderLineItemProduct
    , orderLineItemProduct
    , olipImageLink
    , olipShownImage
    , olipChannel
    , olipBrand
    , olipTargetCountry
    , olipGtin
    , olipItemGroupId
    , olipOfferId
    , olipId
    , olipPrice
    , olipVariantAttributes
    , olipTitle
    , olipContentLanguage
    , olipMpn
    , olipCondition

    -- ** OrdersAcknowledgeResponse
    , OrdersAcknowledgeResponse
    , ordersAcknowledgeResponse
    , oarKind
    , oarExecutionStatus

    -- ** Order
    , Order
    , order
    , ordStatus
    , ordMerchantId
    , ordRefunds
    , ordKind
    , ordLineItems
    , ordShipments
    , ordNetAmount
    , ordPlacedDate
    , ordDeliveryDetails
    , ordShippingOption
    , ordMerchantOrderId
    , ordAcknowledged
    , ordShippingCostTax
    , ordCustomer
    , ordId
    , ordPaymentMethod
    , ordPaymentStatus
    , ordShippingCost

    -- ** OrdersCustomBatchRequestEntryReturnLineItem
    , OrdersCustomBatchRequestEntryReturnLineItem
    , ordersCustomBatchRequestEntryReturnLineItem
    , ocbrerliQuantity
    , ocbrerliLineItemId
    , ocbrerliReason
    , ocbrerliReasonText

    -- ** OrdersUpdateMerchantOrderIdResponse
    , OrdersUpdateMerchantOrderIdResponse
    , ordersUpdateMerchantOrderIdResponse
    , oumoirKind
    , oumoirExecutionStatus

    -- ** OrdersCustomBatchRequestEntryRefund
    , OrdersCustomBatchRequestEntryRefund
    , ordersCustomBatchRequestEntryRefund
    , ocbrerAmount
    , ocbrerReason
    , ocbrerReasonText

    -- ** OrderCancellation
    , OrderCancellation
    , orderCancellation
    , ocQuantity
    , ocActor
    , ocReason
    , ocCreationDate
    , ocReasonText

    -- ** OrdersCustomBatchResponse
    , OrdersCustomBatchResponse
    , ordersCustomBatchResponse
    , ocbrcEntries
    , ocbrcKind
    ) where

import           Network.Google.Prelude
import           Network.Google.Resource.Content.Orders.Acknowledge
import           Network.Google.Resource.Content.Orders.Advancetestorder
import           Network.Google.Resource.Content.Orders.Cancel
import           Network.Google.Resource.Content.Orders.Cancellineitem
import           Network.Google.Resource.Content.Orders.Createtestorder
import           Network.Google.Resource.Content.Orders.Custombatch
import           Network.Google.Resource.Content.Orders.Get
import           Network.Google.Resource.Content.Orders.Getbymerchantorderid
import           Network.Google.Resource.Content.Orders.Gettestordertemplate
import           Network.Google.Resource.Content.Orders.List
import           Network.Google.Resource.Content.Orders.Refund
import           Network.Google.Resource.Content.Orders.Returnlineitem
import           Network.Google.Resource.Content.Orders.Shiplineitems
import           Network.Google.Resource.Content.Orders.Updatemerchantorderid
import           Network.Google.Resource.Content.Orders.Updateshipment
import           Network.Google.ShoppingContent.Types

{- $resources
TODO
-}

type ShoppingContentAPI = Orders

shoppingContentAPI :: Proxy ShoppingContentAPI
shoppingContentAPI = Proxy
