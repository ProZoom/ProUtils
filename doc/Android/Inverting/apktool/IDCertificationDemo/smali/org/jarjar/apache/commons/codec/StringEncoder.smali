.class public interface abstract Lorg/jarjar/apache/commons/codec/StringEncoder;
.super Ljava/lang/Object;
.source "StringEncoder.java"

# interfaces
.implements Lorg/jarjar/apache/commons/codec/Encoder;


# virtual methods
.method public abstract encode(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jarjar/apache/commons/codec/EncoderException;
        }
    .end annotation
.end method
