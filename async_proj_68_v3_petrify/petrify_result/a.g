.inputs Req_in Ack_in
.outputs Req_out Ack_out
.graph
Req_in+ Ack_out+
Ack_in- Ack_out+
Req_in+ Req_out+
Ack_in- Req_out+
Ack_out+ Req_in-
Req_out+ Ack_in+
Req_in- Ack_out-
Ack_in+ Ack_out-
Req_in- Req_out-
Ack_in+ Req_out-
Ack_out- Req_in+
Req_out- Ack_in-
.marking{<Ack_out-,Req_in+><Req_out-,Ack_in->}
.end
