// Generated by gencpp from file commande_locale/SrvAddProductResponse.msg
// DO NOT EDIT!


#ifndef COMMANDE_LOCALE_MESSAGE_SRVADDPRODUCTRESPONSE_H
#define COMMANDE_LOCALE_MESSAGE_SRVADDPRODUCTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace commande_locale
{
template <class ContainerAllocator>
struct SrvAddProductResponse_
{
  typedef SrvAddProductResponse_<ContainerAllocator> Type;

  SrvAddProductResponse_()
    {
    }
  SrvAddProductResponse_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SrvAddProductResponse_

typedef ::commande_locale::SrvAddProductResponse_<std::allocator<void> > SrvAddProductResponse;

typedef boost::shared_ptr< ::commande_locale::SrvAddProductResponse > SrvAddProductResponsePtr;
typedef boost::shared_ptr< ::commande_locale::SrvAddProductResponse const> SrvAddProductResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::commande_locale::SrvAddProductResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace commande_locale

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'commande_locale': ['/home/firerazzer/Documents/TER/MONTRAC/catkin_ws/src/commande_locale/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::commande_locale::SrvAddProductResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "commande_locale/SrvAddProductResponse";
  }

  static const char* value(const ::commande_locale::SrvAddProductResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::commande_locale::SrvAddProductResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SrvAddProductResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::commande_locale::SrvAddProductResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::commande_locale::SrvAddProductResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // COMMANDE_LOCALE_MESSAGE_SRVADDPRODUCTRESPONSE_H
