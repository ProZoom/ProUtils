.class public Lcom/pax/api/model/COMM_PARA;
.super Ljava/lang/Object;


# instance fields
.field public AsMode:B

.field public CHDT:B

.field public DP:B

.field public DT1:B

.field public DT2:B

.field public DTIMES:B

.field public HT:B

.field public SSETUP:B

.field public TimeOut:B

.field public WT:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->DP:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->CHDT:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->DT1:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->DT2:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->HT:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->WT:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->SSETUP:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->DTIMES:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->TimeOut:B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/pax/api/model/COMM_PARA;->AsMode:B

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

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->DP:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->CHDT:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->DT1:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->DT2:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->HT:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->WT:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->SSETUP:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->DTIMES:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->TimeOut:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-byte v1, p0, Lcom/pax/api/model/COMM_PARA;->AsMode:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method
