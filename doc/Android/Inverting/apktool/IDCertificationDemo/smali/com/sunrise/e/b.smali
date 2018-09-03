.class Lcom/sunrise/e/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/Class;

.field private final d:Lcom/sunrise/h/h;

.field private final e:Ljava/lang/String;

.field private f:[Lcom/sunrise/h/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sunrise/d/j;Lcom/sunrise/h/h;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sunrise/e/b;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sunrise/e/b;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/sunrise/e/b;->e:Ljava/lang/String;

    iget-object v0, p3, Lcom/sunrise/h/h;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/sunrise/e/b;->c:Ljava/lang/Class;

    iput p4, p0, Lcom/sunrise/e/b;->a:I

    iput-object p3, p0, Lcom/sunrise/e/b;->d:Lcom/sunrise/h/h;

    iget-object v0, p3, Lcom/sunrise/h/h;->h:[Lcom/sunrise/h/c;

    iput-object v0, p0, Lcom/sunrise/e/b;->f:[Lcom/sunrise/h/c;

    return-void
.end method

.method static synthetic a(Lcom/sunrise/e/b;)Lcom/sunrise/h/h;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/e/b;->d:Lcom/sunrise/h/h;

    return-object v0
.end method

.method static synthetic a(Lcom/sunrise/e/b;[Lcom/sunrise/h/c;)[Lcom/sunrise/h/c;
    .locals 0

    iput-object p1, p0, Lcom/sunrise/e/b;->f:[Lcom/sunrise/h/c;

    return-object p1
.end method

.method static synthetic b(Lcom/sunrise/e/b;)I
    .locals 1

    iget v0, p0, Lcom/sunrise/e/b;->a:I

    return v0
.end method

.method static synthetic c(Lcom/sunrise/e/b;)[Lcom/sunrise/h/c;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/e/b;->f:[Lcom/sunrise/h/c;

    return-object v0
.end method

.method static synthetic d(Lcom/sunrise/e/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/e/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/sunrise/e/b;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/e/b;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/sunrise/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/e/b;->b:Ljava/util/Map;

    iget v1, p0, Lcom/sunrise/e/b;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunrise/e/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/sunrise/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lcom/sunrise/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/e/b;->b:Ljava/util/Map;

    iget v1, p0, Lcom/sunrise/e/b;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/sunrise/e/b;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sunrise/e/b;->a:I

    :cond_0
    iget-object v0, p0, Lcom/sunrise/e/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/sunrise/e/b;->d:Lcom/sunrise/h/h;

    iget-object v0, v0, Lcom/sunrise/h/h;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunrise/e/b;->c:Ljava/lang/Class;

    :cond_0
    return-object v0
.end method
