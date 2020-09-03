# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: kinesis_video

using AWS.Compat
using AWS.UUIDs
"""
    CreateSignalingChannel()

Creates a signaling channel.   CreateSignalingChannel is an asynchronous operation.

# Required Parameters
- `ChannelName`: A name for the signaling channel that you are creating. It must be unique for each AWS account and AWS Region.

# Optional Parameters
- `ChannelType`: A type of the signaling channel that you are creating. Currently, SINGLE_MASTER is the only supported channel type. 
- `SingleMasterConfiguration`: A structure containing the configuration for the SINGLE_MASTER channel type. 
- `Tags`: A set of tags (key-value pairs) that you want to associate with this channel.
"""

create_signaling_channel(ChannelName; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/createSignalingChannel", Dict{String, Any}("ChannelName"=>ChannelName); aws_config=aws_config)
create_signaling_channel(ChannelName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/createSignalingChannel", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ChannelName"=>ChannelName), args)); aws_config=aws_config)

"""
    CreateStream()

Creates a new Kinesis video stream.  When you create a new stream, Kinesis Video Streams assigns it a version number. When you change the stream's metadata, Kinesis Video Streams updates the version.   CreateStream is an asynchronous operation. For information about how the service works, see How it Works.  You must have permissions for the KinesisVideo:CreateStream action.

# Required Parameters
- `StreamName`: A name for the stream that you are creating. The stream name is an identifier for the stream, and must be unique for each account and region.

# Optional Parameters
- `DataRetentionInHours`: The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is 0, indicating that the stream does not persist data. When the DataRetentionInHours value is 0, consumers can still consume the fragments that remain in the service host buffer, which has a retention time limit of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the buffer when either limit is reached.
- `DeviceName`: The name of the device that is writing to the stream.   In the current implementation, Kinesis Video Streams does not use this name. 
- `KmsKeyId`: The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (aws/kinesisvideo) is used.  For more information, see DescribeKey. 
- `MediaType`: The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see Media Types. If you choose to specify the MediaType, see Naming Requirements for guidelines. Example valid values include \"video/h264\" and \"video/h264,audio/aac\". This parameter is optional; the default value is null (or empty in JSON).
- `Tags`: A list of tags to associate with the specified stream. Each tag is a key-value pair (the value is optional).
"""

create_stream(StreamName; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/createStream", Dict{String, Any}("StreamName"=>StreamName); aws_config=aws_config)
create_stream(StreamName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/createStream", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("StreamName"=>StreamName), args)); aws_config=aws_config)

"""
    DeleteSignalingChannel()

Deletes a specified signaling channel. DeleteSignalingChannel is an asynchronous operation. If you don't specify the channel's current version, the most recent version is deleted.

# Required Parameters
- `ChannelARN`: The Amazon Resource Name (ARN) of the signaling channel that you want to delete.

# Optional Parameters
- `CurrentVersion`: The current version of the signaling channel that you want to delete. You can obtain the current version by invoking the DescribeSignalingChannel or ListSignalingChannels API operations.
"""

delete_signaling_channel(ChannelARN; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/deleteSignalingChannel", Dict{String, Any}("ChannelARN"=>ChannelARN); aws_config=aws_config)
delete_signaling_channel(ChannelARN, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/deleteSignalingChannel", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ChannelARN"=>ChannelARN), args)); aws_config=aws_config)

"""
    DeleteStream()

Deletes a Kinesis video stream and the data contained in the stream.  This method marks the stream for deletion, and makes the data in the stream inaccessible immediately.    To ensure that you have the latest version of the stream before deleting it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.  This operation requires permission for the KinesisVideo:DeleteStream action.

# Required Parameters
- `StreamARN`: The Amazon Resource Name (ARN) of the stream that you want to delete. 

# Optional Parameters
- `CurrentVersion`: Optional: The version of the stream that you want to delete.  Specify the version as a safeguard to ensure that your are deleting the correct stream. To get the stream version, use the DescribeStream API. If not specified, only the CreationTime is checked before deleting the stream.
"""

delete_stream(StreamARN; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/deleteStream", Dict{String, Any}("StreamARN"=>StreamARN); aws_config=aws_config)
delete_stream(StreamARN, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/deleteStream", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("StreamARN"=>StreamARN), args)); aws_config=aws_config)

"""
    DescribeSignalingChannel()

Returns the most current information about the signaling channel. You must specify either the name or the Amazon Resource Name (ARN) of the channel that you want to describe.

# Optional Parameters
- `ChannelARN`: The ARN of the signaling channel that you want to describe.
- `ChannelName`: The name of the signaling channel that you want to describe.
"""

describe_signaling_channel(; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/describeSignalingChannel"; aws_config=aws_config)
describe_signaling_channel(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/describeSignalingChannel", args; aws_config=aws_config)

"""
    DescribeStream()

Returns the most current information about the specified stream. You must specify either the StreamName or the StreamARN. 

# Optional Parameters
- `StreamARN`: The Amazon Resource Name (ARN) of the stream.
- `StreamName`: The name of the stream.
"""

describe_stream(; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/describeStream"; aws_config=aws_config)
describe_stream(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/describeStream", args; aws_config=aws_config)

"""
    GetDataEndpoint()

Gets an endpoint for a specified stream for either reading or writing. Use this endpoint in your application to read from the specified stream (using the GetMedia or GetMediaForFragmentList operations) or write to it (using the PutMedia operation).   The returned endpoint does not have the API name appended. The client needs to add the API name to the returned endpoint.  In the request, specify the stream either by StreamName or StreamARN.

# Required Parameters
- `APIName`: The name of the API action for which to get an endpoint.

# Optional Parameters
- `StreamARN`: The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for. You must specify either this parameter or a StreamName in the request. 
- `StreamName`: The name of the stream that you want to get the endpoint for. You must specify either this parameter or a StreamARN in the request.
"""

get_data_endpoint(APIName; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/getDataEndpoint", Dict{String, Any}("APIName"=>APIName); aws_config=aws_config)
get_data_endpoint(APIName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/getDataEndpoint", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("APIName"=>APIName), args)); aws_config=aws_config)

"""
    GetSignalingChannelEndpoint()

Provides an endpoint for the specified signaling channel to send and receive messages. This API uses the SingleMasterChannelEndpointConfiguration input parameter, which consists of the Protocols and Role properties.  Protocols is used to determine the communication mechanism. For example, if you specify WSS as the protocol, this API produces a secure websocket endpoint. If you specify HTTPS as the protocol, this API generates an HTTPS endpoint.   Role determines the messaging permissions. A MASTER role results in this API generating an endpoint that a client can use to communicate with any of the viewers on the channel. A VIEWER role results in this API generating an endpoint that a client can use to communicate only with a MASTER. 

# Required Parameters
- `ChannelARN`: The Amazon Resource Name (ARN) of the signalling channel for which you want to get an endpoint.

# Optional Parameters
- `SingleMasterChannelEndpointConfiguration`: A structure containing the endpoint configuration for the SINGLE_MASTER channel type.
"""

get_signaling_channel_endpoint(ChannelARN; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/getSignalingChannelEndpoint", Dict{String, Any}("ChannelARN"=>ChannelARN); aws_config=aws_config)
get_signaling_channel_endpoint(ChannelARN, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/getSignalingChannelEndpoint", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ChannelARN"=>ChannelARN), args)); aws_config=aws_config)

"""
    ListSignalingChannels()

Returns an array of ChannelInfo objects. Each object describes a signaling channel. To retrieve only those channels that satisfy a specific condition, you can specify a ChannelNameCondition.

# Optional Parameters
- `ChannelNameCondition`: Optional: Returns only the channels that satisfy a specific condition.
- `MaxResults`: The maximum number of channels to return in the response. The default is 500.
- `NextToken`: If you specify this parameter, when the result of a ListSignalingChannels operation is truncated, the call returns the NextToken in the response. To get another batch of channels, provide this token in your next request.
"""

list_signaling_channels(; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/listSignalingChannels"; aws_config=aws_config)
list_signaling_channels(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/listSignalingChannels", args; aws_config=aws_config)

"""
    ListStreams()

Returns an array of StreamInfo objects. Each object describes a stream. To retrieve only streams that satisfy a specific condition, you can specify a StreamNameCondition. 

# Optional Parameters
- `MaxResults`: The maximum number of streams to return in the response. The default is 10,000.
- `NextToken`: If you specify this parameter, when the result of a ListStreams operation is truncated, the call returns the NextToken in the response. To get another batch of streams, provide this token in your next request.
- `StreamNameCondition`: Optional: Returns only streams that satisfy a specific condition. Currently, you can specify only the prefix of a stream name as a condition. 
"""

list_streams(; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/listStreams"; aws_config=aws_config)
list_streams(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/listStreams", args; aws_config=aws_config)

"""
    ListTagsForResource()

Returns a list of tags associated with the specified signaling channel.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the signaling channel for which you want to list tags.

# Optional Parameters
- `NextToken`: If you specify this parameter and the result of a ListTagsForResource call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags. 
"""

list_tags_for_resource(ResourceARN; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
list_tags_for_resource(ResourceARN, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), args)); aws_config=aws_config)

"""
    ListTagsForStream()

Returns a list of tags associated with the specified stream. In the request, you must specify either the StreamName or the StreamARN. 

# Optional Parameters
- `NextToken`: If you specify this parameter and the result of a ListTagsForStream call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.
- `StreamARN`: The Amazon Resource Name (ARN) of the stream that you want to list tags for.
- `StreamName`: The name of the stream that you want to list tags for.
"""

list_tags_for_stream(; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/listTagsForStream"; aws_config=aws_config)
list_tags_for_stream(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/listTagsForStream", args; aws_config=aws_config)

"""
    TagResource()

Adds one or more tags to a signaling channel. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the signaling channel to which you want to add tags.
- `Tags`: A list of tags to associate with the specified signaling channel. Each tag is a key-value pair.

"""

tag_resource(ResourceARN, Tags; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceARN, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    TagStream()

Adds one or more tags to a stream. A tag is a key-value pair (the value is optional) that you can define and assign to AWS resources. If you specify a tag that already exists, the tag value is replaced with the value that you specify in the request. For more information, see Using Cost Allocation Tags in the AWS Billing and Cost Management User Guide.  You must provide either the StreamName or the StreamARN. This operation requires permission for the KinesisVideo:TagStream action. Kinesis video streams support up to 50 tags.

# Required Parameters
- `Tags`: A list of tags to associate with the specified stream. Each tag is a key-value pair (the value is optional).

# Optional Parameters
- `StreamARN`: The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags to.
- `StreamName`: The name of the stream that you want to add the tag or tags to.
"""

tag_stream(Tags; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/tagStream", Dict{String, Any}("Tags"=>Tags); aws_config=aws_config)
tag_stream(Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/tagStream", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes one or more tags from a signaling channel. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the signaling channel from which you want to remove tags.
- `TagKeyList`: A list of the keys of the tags that you want to remove.

"""

untag_resource(ResourceARN, TagKeyList; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeyList"=>TagKeyList); aws_config=aws_config)
untag_resource(ResourceARN, TagKeyList, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeyList"=>TagKeyList), args)); aws_config=aws_config)

"""
    UntagStream()

Removes one or more tags from a stream. In the request, specify only a tag key or keys; don't specify the value. If you specify a tag key that does not exist, it's ignored. In the request, you must provide the StreamName or StreamARN.

# Required Parameters
- `TagKeyList`: A list of the keys of the tags that you want to remove.

# Optional Parameters
- `StreamARN`: The Amazon Resource Name (ARN) of the stream that you want to remove tags from.
- `StreamName`: The name of the stream that you want to remove tags from.
"""

untag_stream(TagKeyList; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/untagStream", Dict{String, Any}("TagKeyList"=>TagKeyList); aws_config=aws_config)
untag_stream(TagKeyList, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/untagStream", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("TagKeyList"=>TagKeyList), args)); aws_config=aws_config)

"""
    UpdateDataRetention()

 Increases or decreases the stream's data retention period by the value that you specify. To indicate whether you want to increase or decrease the data retention period, specify the Operation parameter in the request body. In the request, you must specify either the StreamName or the StreamARN.   The retention period that you specify replaces the current value.  This operation requires permission for the KinesisVideo:UpdateDataRetention action. Changing the data retention period affects the data in the stream as follows:   If the data retention period is increased, existing data is retained for the new retention period. For example, if the data retention period is increased from one hour to seven hours, all existing data is retained for seven hours.   If the data retention period is decreased, existing data is retained for the new retention period. For example, if the data retention period is decreased from seven hours to one hour, all existing data is retained for one hour, and any data older than one hour is deleted immediately.  

# Required Parameters
- `CurrentVersion`: The version of the stream whose retention period you want to change. To get the version, call either the DescribeStream or the ListStreams API.
- `DataRetentionChangeInHours`: The retention period, in hours. The value you specify replaces the current value. The maximum value for this parameter is 87600 (ten years).
- `Operation`: Indicates whether you want to increase or decrease the retention period.

# Optional Parameters
- `StreamARN`: The Amazon Resource Name (ARN) of the stream whose retention period you want to change.
- `StreamName`: The name of the stream whose retention period you want to change.
"""

update_data_retention(CurrentVersion, DataRetentionChangeInHours, Operation; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/updateDataRetention", Dict{String, Any}("CurrentVersion"=>CurrentVersion, "DataRetentionChangeInHours"=>DataRetentionChangeInHours, "Operation"=>Operation); aws_config=aws_config)
update_data_retention(CurrentVersion, DataRetentionChangeInHours, Operation, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/updateDataRetention", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CurrentVersion"=>CurrentVersion, "DataRetentionChangeInHours"=>DataRetentionChangeInHours, "Operation"=>Operation), args)); aws_config=aws_config)

"""
    UpdateSignalingChannel()

Updates the existing signaling channel. This is an asynchronous operation and takes time to complete.  If the MessageTtlSeconds value is updated (either increased or reduced), it only applies to new messages sent via this channel after it's been updated. Existing messages are still expired as per the previous MessageTtlSeconds value.

# Required Parameters
- `ChannelARN`: The Amazon Resource Name (ARN) of the signaling channel that you want to update.
- `CurrentVersion`: The current version of the signaling channel that you want to update.

# Optional Parameters
- `SingleMasterConfiguration`: The structure containing the configuration for the SINGLE_MASTER type of the signaling channel that you want to update. 
"""

update_signaling_channel(ChannelARN, CurrentVersion; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/updateSignalingChannel", Dict{String, Any}("ChannelARN"=>ChannelARN, "CurrentVersion"=>CurrentVersion); aws_config=aws_config)
update_signaling_channel(ChannelARN, CurrentVersion, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/updateSignalingChannel", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ChannelARN"=>ChannelARN, "CurrentVersion"=>CurrentVersion), args)); aws_config=aws_config)

"""
    UpdateStream()

Updates stream metadata, such as the device name and media type. You must provide the stream name or the Amazon Resource Name (ARN) of the stream. To make sure that you have the latest version of the stream before updating it, you can specify the stream version. Kinesis Video Streams assigns a version to each stream. When you update a stream, Kinesis Video Streams assigns a new version number. To get the latest stream version, use the DescribeStream API.   UpdateStream is an asynchronous operation, and takes time to complete.

# Required Parameters
- `CurrentVersion`: The version of the stream whose metadata you want to update.

# Optional Parameters
- `DeviceName`: The name of the device that is writing to the stream.    In the current implementation, Kinesis Video Streams does not use this name.  
- `MediaType`: The stream's media type. Use MediaType to specify the type of content that the stream contains to the consumers of the stream. For more information about media types, see Media Types. If you choose to specify the MediaType, see Naming Requirements. To play video on the console, you must specify the correct video type. For example, if the video in the stream is H.264, specify video/h264 as the MediaType.
- `StreamARN`: The ARN of the stream whose metadata you want to update.
- `StreamName`: The name of the stream whose metadata you want to update. The stream name is an identifier for the stream, and must be unique for each account and region.
"""

update_stream(CurrentVersion; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/updateStream", Dict{String, Any}("CurrentVersion"=>CurrentVersion); aws_config=aws_config)
update_stream(CurrentVersion, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = kinesis_video("POST", "/updateStream", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CurrentVersion"=>CurrentVersion), args)); aws_config=aws_config)