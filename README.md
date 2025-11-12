# Bayteq Flutter Challenge

Este proyecto busca seguir los principios de **Arquitectura Limpia** con una organización basada en features, asegurando:
- ✅ **Separación de Responsabilidades** - Límites claros entre capas
- ✅ **Testeabilidad** - Cada capa puede probarse de forma independiente
- ✅ **Escalabilidad** - Fácil agregar nuevas funcionalidades sin afectar el código existente
- ✅ **Mantenibilidad** - Estructura de código organizada con dependencias claras

### Capas de Arquitectura

```
┌─────────────────────────────────────────────────┐
│           Capa de Presentación                  │
│  (UI, Widgets, BLoC, Pages, Screens)           │
└─────────────────┬───────────────────────────────┘
                  │
┌─────────────────▼───────────────────────────────┐
│              Capa de Dominio                    │
│  (Entities, Use Cases, Repository Interfaces)  │
└─────────────────┬───────────────────────────────┘
                  │
┌─────────────────▼───────────────────────────────┐
│              Capa de Datos                      │
│  (Repository Impl, Data Sources, DTOs, Models) │
└─────────────────────────────────────────────────┘
```

## 📁 Estructura del Proyecto

```
lib/
├── app/                          # Punto de entrada de la aplicación
│   └── app.dart                  # Configuración raíz de la app
├── config/                       # Configuración global
│   ├── router/                   # Navegación con GoRouter
│   └── theme/                    # Configuración de temas
├── core/                         # Funcionalidad central
│   ├── constants/                # Constantes de la aplicación
│   ├── di/                       # Inyección de dependencias (GetIt)
│   ├── errors/                   # Manejo de errores y fallos
│   ├── network/                  # Configuración del cliente HTTP
│   └── utils/                    # Funciones utilitarias
├── features/                     # Módulos de características
│   ├── auth/                     # Característica de autenticación
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   ├── local/        # Almacenamiento local (tokens)
│   │   │   │   └── remote/       # Servicio API (Retrofit)
│   │   │   ├── dto/              # Objetos de Transferencia de Datos
│   │   │   ├── models/           # Modelos de datos
│   │   │   └── repositories/     # Implementaciones de repositorios
│   │   ├── domain/
│   │   │   ├── entities/         # Entidades de negocio
│   │   │   ├── repositories/     # Interfaces de repositorios
│   │   │   └── usecases/         # Lógica de negocio
│   │   └── presentation/
│   │       ├── bloc/             # Gestión de estado (BLoC + Freezed)
│   │       ├── forms/            # Modelos de formularios (Formz)
│   │       ├── pages/            # Widgets de página completa
│   │       ├── screens/          # Componentes de pantalla
│   │       └── widgets/          # Componentes UI reutilizables
│   │
│   ├── products/                 # Característica de productos
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   │   ├── local/        # Caché con SharedPreferences
│   │   │   │   └── remote/       # Servicio API (Retrofit)
│   │   │   ├── dto/              # Objetos de Transferencia de Datos
│   │   │   ├── models/           # Modelos de datos
│   │   │   └── repositories/     # Implementaciones de repositorios
│   │   ├── domain/
│   │   │   ├── entities/         # Entidades de productos
│   │   │   ├── repositories/     # Interfaces de repositorios
│   │   │   └── usecases/         # Operaciones CRUD
│   │   └── presentation/
│   │       ├── bloc/             # BLoCs de Product y ProductDetail
│   │       ├── forms/            # Formulario de producto con validación
│   │       ├── pages/            # Páginas de productos
│   │       ├── screens/          # Pantallas de productos
│   │       └── widgets/          # Componentes UI de productos
│   │
│   └── home/                     # Navegación principal
│       └── presentation/         # UI de navegación inferior
│
└── shared/                       # Recursos compartidos
    ├── models/                   # Modelos de datos compartidos
    ├── services/                 # Servicios compartidos
    └── widgets/                  # Componentes UI compartidos
```

## 🛠️ Stack Técnico

### Dependencias Principales

| Paquete | Versión | Propósito |
|---------|---------|-----------|
| **flutter_bloc** | ^8.1.6 | Gestión de estado |
| **freezed** | ^2.5.7 | Modelos inmutables y uniones |
| **get_it** | ^8.0.2 | Inyección de dependencias |
| **dartz** | ^0.10.1 | Programación funcional (Either) |
| **formz** | ^0.7.0 | Validación de formularios |
| **go_router** | ^17.0.0 | Enrutamiento declarativo |

### Red y API

| Paquete | Versión | Propósito |
|---------|---------|-----------|
| **dio** | ^5.9.0 | Cliente HTTP |
| **retrofit** | ^4.9.0 | API REST con seguridad de tipos |
| **json_annotation** | ^4.9.0 | Serialización JSON |

### Almacenamiento

| Paquete | Versión | Propósito |
|---------|---------|-----------|
| **shared_preferences** | ^2.3.3 | Caché local |
| **flutter_secure_storage** | ^9.2.2 | Almacenamiento seguro de tokens |

### Componentes UI

| Paquete | Versión | Propósito |
|---------|---------|-----------|
| **flutter_rating_bar** | ^4.0.1 | Visualización de calificaciones |

### Generación de Código

| Paquete | Versión | Propósito |
|---------|---------|-----------|
| **build_runner** | ^2.4.13 | Ejecutor de generación de código |
| **freezed_annotation** | ^2.4.4 | Anotaciones Freezed |
| **json_serializable** | ^6.8.0 | Serialización JSON |
| **retrofit_generator** | ^9.1.4 | Generación de código Retrofit |

---

## 📱 Flujo de la Aplicación

1. **Pantalla de Login** → Ingresar credenciales → Validar → Autenticar
2. **Pantalla de Inicio** → Navegación inferior con pestañas:
   - Pestaña de Perfil → Información del usuario
   - Pestaña de Productos → Lista de productos
3. **Lista de Productos** → Scroll infinito → Tocar producto
4. **Detalle de Producto** → Ver/Editar → Guardar cambios
5. **Cerrar Sesión** → Confirmación → Limpiar sesión → Regresar al login

---

## ✨ Características

### 🔐 Característica de Autenticación

**Capacidades:**
- ✅ **Inicio de Sesión Seguro** - Autenticación basada en tokens JWT
- ✅ **Validación de Formularios** - Validación en tiempo real con Formz
  - Validación de usuario y contraseña
- ✅ **Gestión de Sesión** - Almacenamiento automático de tokens con flutter_secure_storage
- ✅ **Perfil de Usuario** - Visualización completa de información del usuario
- ✅ **Cerrar Sesión** - Terminación segura de sesión con diálogo de confirmación

---

### 🛍️ Característica de Productos

**Capacidades:**
- ✅ **Lista de Productos** - Scroll infinito paginado
- ✅ **Detalles de Producto** - Ver y editar productos individuales
- ✅ **Operaciones CRUD** - Crear, Leer, Actualizar, Eliminar
- ✅ **Modo Offline-First** - Estrategia de caché primero con sincronización en segundo plano
- ✅ **Validación de Formularios** - Entradas de producto validadas (Formz)
  - Título (requerido, mínimo 3 caracteres)
  - Descripción (requerida)
  - Precio (numérico, mínimo 0.01)
  - Categoría (requerida)
- ✅ **Visualización de Imágenes** - Miniaturas de productos con manejo de errores
- ✅ **Actualizaciones en Tiempo Real** - La lista se actualiza después de modificaciones

---

## 🔧 Configuración e Instalación

### Requisitos Previos
- Flutter SDK: `>=3.5.4 <4.0.0`
- Dart SDK: `>=3.5.4 <4.0.0`

### Pasos de Instalación

1. **Clonar el repositorio**
```bash
git clone https://github.com/AValleO/bayteq_flutter_challenge.git
cd bayteq_flutter_challenge
```

2. **Instalar dependencias**
```bash
flutter pub get
```

3. **Generar código** (para Freezed, serialización JSON, Retrofit)
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. **Ejecutar la aplicación**
```bash
flutter run
```

---

## 🧪 Credenciales de Prueba

Usa estas credenciales para probar la autenticación:

**Usuario:** `emilys`  
**Contraseña:** `emilyspass`
