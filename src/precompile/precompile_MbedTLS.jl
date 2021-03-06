function _precompile_3()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(MbedTLS.parse_keyfile!, (MbedTLS.PKContext, String, String,))
    precompile(MbedTLS.Type, (Type{MbedTLS.PKContext},))
    precompile(MbedTLS.hostname!, (MbedTLS.SSLContext, Base.SubString{String},))
    precompile(MbedTLS.Type, (Type{MbedTLS.SSLConfig},))
    precompile(MbedTLS.close, (MbedTLS.SSLContext,))
    precompile(MbedTLS.Type, (Type{MbedTLS.CRT},))
    precompile(MbedTLS.Type, (Type{MbedTLS.SSLContext},))
    precompile(MbedTLS.own_cert!, (MbedTLS.SSLConfig, MbedTLS.CRT, MbedTLS.PKContext,))
    precompile(MbedTLS.unsafe_write, (MbedTLS.SSLContext, Ptr{UInt8}, UInt64,))
    precompile(MbedTLS.f_send, (Ptr{Void}, Ptr{UInt8}, UInt64,))
    precompile(MbedTLS.setup!, (MbedTLS.SSLContext, MbedTLS.SSLConfig,))
    precompile(MbedTLS.Type, (Type{MbedTLS.Entropy},))
    precompile(MbedTLS.f_rng, (Ptr{Void}, Ptr{UInt8}, UInt64,))
    precompile(MbedTLS.handshake, (MbedTLS.SSLContext,))
    precompile(MbedTLS.set_bio!, (MbedTLS.SSLContext, Base.TCPSocket,))
    precompile(MbedTLS.seed!, (MbedTLS.CtrDrbg, MbedTLS.Entropy, Array{UInt8, 1},))
    precompile(MbedTLS.Type, (Type{MbedTLS.SSLConfig}, String, String,))
    precompile(MbedTLS.rand!, (MbedTLS.CtrDrbg, Array{UInt8, 1},))
    precompile(MbedTLS.f_dbg, (Ptr{Void}, Int32, Ptr{UInt8}, Int32, Ptr{UInt8},))
    precompile(MbedTLS.jl_entropy, (Ptr{Void}, Ptr{Void}, UInt64, Ptr{Void},))
    precompile(MbedTLS.f_recv, (Ptr{Void}, Ptr{UInt8}, UInt64,))
    precompile(MbedTLS.crt_parse!, (MbedTLS.CRT, String,))
    precompile(MbedTLS.Type, (Type{MbedTLS.CtrDrbg},))
    precompile(MbedTLS.__init__, ())
    precompile(MbedTLS.readbytes!, (MbedTLS.SSLContext, Array{UInt8, 1}, UInt64,))
    precompile(MbedTLS.readavailable, (MbedTLS.SSLContext,))
    precompile(MbedTLS.__sslinit__, ())
    precompile(MbedTLS.ca_chain!, (MbedTLS.SSLConfig,))
    precompile(MbedTLS.Type, (Type{MbedTLS.SSLConfig}, Bool,))
end
