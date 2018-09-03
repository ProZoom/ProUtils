.class public Lcom/sunrise/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/e/s;
.implements Lcom/sunrise/f/ap;


# static fields
.field public static final a:Lcom/sunrise/f/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/f;

    invoke-direct {v0}, Lcom/sunrise/f/f;-><init>()V

    sput-object v0, Lcom/sunrise/f/f;->a:Lcom/sunrise/f/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/d/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    invoke-interface {v1}, Lcom/sunrise/d/d;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v0, p1, Lcom/sunrise/d/a;->d:Lcom/sunrise/d/d;

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Lcom/sunrise/d/d;->a(I)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/sunrise/a/b;

    invoke-direct {v2}, Lcom/sunrise/a/b;-><init>()V

    invoke-virtual {p1, v2}, Lcom/sunrise/d/a;->b(Ljava/util/Collection;)V

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne p2, v1, :cond_2

    new-instance v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v2}, Lcom/sunrise/a/b;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    :goto_1
    invoke-virtual {v2}, Lcom/sunrise/a/b;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/sunrise/a/b;->b(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2}, Lcom/sunrise/a/b;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    :goto_2
    invoke-virtual {v2}, Lcom/sunrise/a/b;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lcom/sunrise/a/b;->c(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x5d

    const/16 v3, 0x5b

    const/16 v6, 0x2c

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->b(I)V

    :goto_0
    return-void

    :cond_0
    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v2, :cond_1

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sunrise/f/az;->a(J)V

    goto :goto_0

    :cond_1
    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "true"

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->a(Ljava/lang/CharSequence;)Lcom/sunrise/f/az;

    goto :goto_0

    :cond_2
    const-string v0, "false"

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    sget-object v0, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    invoke-virtual {v1, v0}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    goto :goto_0

    :cond_4
    instance-of v2, p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eqz v2, :cond_7

    check-cast p2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_2
    if-ge v0, v2, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v3

    if-eqz v0, :cond_5

    invoke-virtual {v1, v6}, Lcom/sunrise/f/az;->write(I)V

    :cond_5
    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v7}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0

    :cond_7
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Lcom/sunrise/f/az;->write(I)V

    :goto_3
    if-ge v0, v2, :cond_9

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v4

    if-eqz v0, :cond_8

    invoke-virtual {v1, v6}, Lcom/sunrise/f/az;->write(I)V

    :cond_8
    invoke-virtual {v1, v4, v5}, Lcom/sunrise/f/az;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v7}, Lcom/sunrise/f/az;->write(I)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
