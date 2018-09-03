.class public Lcom/pax/api/model/R_RSA_PRIVATE_KEY;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_RSA_MODULUS_BITS:I = 0x800

.field private static final MAX_RSA_MODULUS_LEN:I = 0x100

.field private static final MAX_RSA_PRIME_BITS:I = 0x400

.field private static final MAX_RSA_PRIME_LEN:I = 0x80


# instance fields
.field public aucCoefficient:[B

.field public aucExponent:[B

.field public aucModulus:[B

.field public aucPrime:[[B

.field public aucPrimeExponent:[[B

.field public aucPublicExponent:[B

.field public uiBitLen:S


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    const/16 v1, 0x100

    const/16 v2, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucModulus:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPublicExponent:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucExponent:[B

    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucCoefficient:[B

    return-void
.end method

.method public constructor <init>(I[B[B[B[[B[[B[B)V
    .locals 6
    .param p1, "uiBitLen"    # I
    .param p2, "Modulus"    # [B
    .param p3, "PublicExponent"    # [B
    .param p4, "Exponent"    # [B
    .param p5, "Prime"    # [[B
    .param p6, "PrimeExponent"    # [[B
    .param p7, "Coefficient"    # [B

    .prologue
    const/4 v5, 0x2

    const/16 v1, 0x100

    const/16 v2, 0x80

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, p1

    iput-short v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->uiBitLen:S

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucModulus:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPublicExponent:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucExponent:[B

    filled-new-array {v5, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    filled-new-array {v5, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucCoefficient:[B

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucModulus:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPublicExponent:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucExponent:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    aget-object v0, v0, v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    aget-object v0, v0, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    aget-object v0, v0, v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    aget-object v0, v0, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucCoefficient:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucModulus:[B

    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPublicExponent:[B

    array-length v1, p3

    invoke-static {p3, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucExponent:[B

    array-length v1, p4

    invoke-static {p4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p5, v3

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    aget-object v1, v1, v3

    aget-object v2, p5, v3

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p5, v4

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    aget-object v1, v1, v4

    aget-object v2, p5, v4

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p6, v3

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    aget-object v1, v1, v3

    aget-object v2, p6, v3

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p6, v4

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    aget-object v1, v1, v4

    aget-object v2, p6, v4

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucCoefficient:[B

    array-length v1, p7

    invoke-static {p7, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public serialFromBuffer([B)V
    .locals 4
    .param p1, "bb"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput-short v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->uiBitLen:S

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucModulus:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPublicExponent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucExponent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucCoefficient:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public serialToBuffer()[B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-short v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->uiBitLen:S

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucModulus:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPublicExponent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucExponent:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrime:[[B

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucPrimeExponent:[[B

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/pax/api/model/R_RSA_PRIVATE_KEY;->aucCoefficient:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
