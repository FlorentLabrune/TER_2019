// Generated by gencpp from file commande_locale/SrvAddProduct.msg
// DO NOT EDIT!


#ifndef COMMANDE_LOCALE_MESSAGE_SRVADDPRODUCT_H
#define COMMANDE_LOCALE_MESSAGE_SRVADDPRODUCT_H

#include <ros/service_traits.h>


#include <commande_locale/SrvAddProductRequest.h>
#include <commande_locale/SrvAddProductResponse.h>


namespace commande_locale
{

struct SrvAddProduct
{

typedef SrvAddProductRequest Request;
typedef SrvAddProductResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SrvAddProduct
} // namespace commande_locale


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::commande_locale::SrvAddProduct > {
  static const char* value()
  {
    return "02830da78068d9cdc27b052881f589fb";
  }

  static const char* value(const ::commande_locale::SrvAddProduct&) { return value(); }
};

template<>
struct DataType< ::commande_locale::SrvAddProduct > {
  static const char* value()
  {
    return "commande_locale/SrvAddProduct";
  }

  static const char* value(const ::commande_locale::SrvAddProduct&) { return value(); }
};


// service_traits::MD5Sum< ::commande_locale::SrvAddProductRequest> should match 
// service_traits::MD5Sum< ::commande_locale::SrvAddProduct > 
template<>
struct MD5Sum< ::commande_locale::SrvAddProductRequest>
{
  static const char* value()
  {
    return MD5Sum< ::commande_locale::SrvAddProduct >::value();
  }
  static const char* value(const ::commande_locale::SrvAddProductRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::commande_locale::SrvAddProductRequest> should match 
// service_traits::DataType< ::commande_locale::SrvAddProduct > 
template<>
struct DataType< ::commande_locale::SrvAddProductRequest>
{
  static const char* value()
  {
    return DataType< ::commande_locale::SrvAddProduct >::value();
  }
  static const char* value(const ::commande_locale::SrvAddProductRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::commande_locale::SrvAddProductResponse> should match 
// service_traits::MD5Sum< ::commande_locale::SrvAddProduct > 
template<>
struct MD5Sum< ::commande_locale::SrvAddProductResponse>
{
  static const char* value()
  {
    return MD5Sum< ::commande_locale::SrvAddProduct >::value();
  }
  static const char* value(const ::commande_locale::SrvAddProductResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::commande_locale::SrvAddProductResponse> should match 
// service_traits::DataType< ::commande_locale::SrvAddProduct > 
template<>
struct DataType< ::commande_locale::SrvAddProductResponse>
{
  static const char* value()
  {
    return DataType< ::commande_locale::SrvAddProduct >::value();
  }
  static const char* value(const ::commande_locale::SrvAddProductResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // COMMANDE_LOCALE_MESSAGE_SRVADDPRODUCT_H