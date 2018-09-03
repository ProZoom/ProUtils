.class public Lcom/pax/api/model/ST_FONT;
.super Ljava/lang/Object;


# instance fields
.field public bold:I

.field public charSet:I

.field public height:I

.field public italic:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "charSet"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "bold"    # I
    .param p5, "italic"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pax/api/model/ST_FONT;->charSet:I

    iput p2, p0, Lcom/pax/api/model/ST_FONT;->width:I

    iput p3, p0, Lcom/pax/api/model/ST_FONT;->height:I

    iput p4, p0, Lcom/pax/api/model/ST_FONT;->bold:I

    iput p5, p0, Lcom/pax/api/model/ST_FONT;->italic:I

    return-void
.end method


# virtual methods
.method public SerialTobuffer()[B
    .locals 2

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget v1, p0, Lcom/pax/api/model/ST_FONT;->charSet:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/pax/api/model/ST_FONT;->width:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/pax/api/model/ST_FONT;->height:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/pax/api/model/ST_FONT;->bold:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/pax/api/model/ST_FONT;->italic:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public serialFromBuffer([B)V
    .locals 2
    .param p1, "bb"    # [B

    .prologue
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/pax/api/model/ST_FONT;->charSet:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/pax/api/model/ST_FONT;->width:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/pax/api/model/ST_FONT;->height:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/pax/api/model/ST_FONT;->bold:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/pax/api/model/ST_FONT;->italic:I

    return-void
.end method

.method public toIntArray()[I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/pax/api/model/ST_FONT;->charSet:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/pax/api/model/ST_FONT;->width:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/pax/api/model/ST_FONT;->height:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/pax/api/model/ST_FONT;->bold:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/pax/api/model/ST_FONT;->italic:I

    aput v2, v0, v1

    return-object v0
.end method
