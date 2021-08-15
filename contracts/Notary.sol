// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

/*
 Notary will assosiate a document with its owner
 */
contract Notary {

    struct Entry {
        string filename;
        uint timestamp;
        bytes32 checksum;
        string comments;
        bool isSet;
        address setBy;
    }

    // associate the document with its details
    mapping(bytes32 => Entry) private map;

    event EntryAdded(string _filename, bytes32 _checksum, address indexed _setBy);

    function addEntry(string memory _filename, bytes32 _checksum, string memory _comments) public {
        // check the checksum is not added yet
        require(!map[_checksum].isSet);

        map[_checksum].filename = _filename;
        map[_checksum].timestamp = block.timestamp;
        map[_checksum].checksum = _checksum;
        map[_checksum].comments = _comments;
        map[_checksum].isSet = true;
        map[_checksum].setBy = msg.sender;

        emit EntryAdded(
            _filename,
            _checksum,
            msg.sender
        );
    }

    /**
     * returns 
     *  string: filename
     *  uint: timestamp
     *  string: comments
     *  address: setBy
     */
    function readEntry(bytes32  _checksum) public view 
        returns(string memory, uint, string memory, address) {
            require(map[_checksum].isSet);
            
            return (
                map[_checksum].filename, 
                map[_checksum].timestamp, 
                map[_checksum].comments, 
                map[_checksum].setBy
            );
    }
}