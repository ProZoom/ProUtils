.class public Lcom/pax/api/model/R_RSA_PUBLIC_KEY;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_RSA_MODULUS_BITS:I = 0x800

.field private static final MAX_RSA_MODULUS_LEN:I = 0x100


# instance fields
.field public aucExponent:[B

.field public aucModulus:[B

.field public uiBitLen:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucModulus:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucExponent:[B

    return-void
.end method

.method public constructor <init>(I[B[B)V
    .locals 3
    .param p1, "BitLen"    # I
    .param p2, "Modulus"    # [B
    .param p3, "Exponent"    # [B

    .prologue
    const/16 v1, 0x100

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, p1

    iput-short v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->uiBitLen:S

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucModulus:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucExponent:[B

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucModulus:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucExponent:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucModulus:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucExponent:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public serialFromBuffer([B)V
    .locals 2
    .param p1, "bb"    # [B

    .prologue
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->uiBitLen:S

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucModulus:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucExponent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public serialToBuffer()[B
    .locals 2

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->uiBitLen:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucModulus:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PUBLIC_KEY;->aucExponent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
