.class public Lcom/sunrise/f/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sunrise/f/ap;


# static fields
.field public static a:Lcom/sunrise/f/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sunrise/f/x;

    invoke-direct {v0}, Lcom/sunrise/f/x;-><init>()V

    sput-object v0, Lcom/sunrise/f/x;->a:Lcom/sunrise/f/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v8, p1, Lcom/sunrise/f/af;->b:Lcom/sunrise/f/az;

    if-nez p2, :cond_0

    sget-object v0, Lcom/sunrise/f/ba;->g:Lcom/sunrise/f/ba;

    invoke-virtual {v8, v0}, Lcom/sunrise/f/az;->b(Lcom/sunrise/f/ba;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    sget-object v1, Lcom/sunrise/f/ba;->o:Lcom/sunrise/f/ba;

    invoke-virtual {v8, v1}, Lcom/sunrise/f/az;->a(Lcom/sunrise/f/ba;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v0

    :cond_1
    move-object v6, p2

    check-cast v6, Ljava/util/Enumeration;

    iget-object v9, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    invoke-virtual {p1, v9, p2, p3, v0}, Lcom/sunrise/f/af;->a(Lcom/sunrise/f/au;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v1, 0x5b

    :try_start_0
    invoke-virtual {v8, v1}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v7, v0, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v8}, Lcom/sunrise/f/az;->b()V

    move v0, v7

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sunrise/f/af;->a(Ljava/lang/Class;)Lcom/sunrise/f/ap;

    move-result-object v0

    add-int/lit8 v1, v7, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/sunrise/f/ap;->a(Lcom/sunrise/f/af;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move v0, v7

    goto :goto_1

    :cond_4
    const/16 v0, 0x5d

    invoke-virtual {v8, v0}, Lcom/sunrise/f/az;->a(C)Lcom/sunrise/f/az;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v9, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v9, p1, Lcom/sunrise/f/af;->d:Lcom/sunrise/f/au;

    throw v0
.end method
