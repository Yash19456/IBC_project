pragma solidity >=0.4.21 <0.7.0;

contract Videostream {
    uint public videos=0;
    struct Video{
        string title;
        address author_add;
        string hash;
        uint likes;
        uint dislikes;
    }
    mapping(uint=>Video) video_lists;
    function videouploading(string memory video_hash,string memory title) public {
        video_lists[videos]= Video(title,msg.sender,video_hash,0,0);
        videos+=1;

    }
}