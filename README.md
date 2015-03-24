#qb-file-byte-sum

**qb-file-byte-sum** is a dos app to find the byte sum of a file to verify its integrity.
Such a requirement in case of communication as well as storage (storage can be considered
as communication where source is current you and destination is a later you). Communication
is almost always lossy, and can introduce errors into data. A measure like this helps to
verify the correctness of data (but cannot guarentee that it is correct). More details
[here](http://en.wikipedia.org/wiki/Checksum).


##demo

<img src="/assets/img/0.png" width="70%"><br/>
Enter `Filename` whose byte sum is required.
<br/><br/>


<img src="/assets/img/1.png" width="70%"><br/>
`Checksum` is the sum of bytes in the file.
<br/><br/>
