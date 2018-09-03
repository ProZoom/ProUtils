.class public Lcom/sunrise/bluetooth/Reader;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cmccreader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native read_cmcc0(Ljava/lang/Object;)[B
.end method

.method public static native read_cmcc1(Ljava/lang/Object;)[B
.end method

.method public static native read_cmcc2(Ljava/lang/Object;[B)[B
.end method

.method public static native read_cmcc3(Ljava/lang/Object;[B)[B
.end method

.method public static native setKey([B)I
.end method
