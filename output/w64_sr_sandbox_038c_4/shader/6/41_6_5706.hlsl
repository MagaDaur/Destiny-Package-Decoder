// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:02 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).wxyz;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.yzw = t0.Load(r2.w).xyz;
    r0.y = saturate(r1.w);
    r6.xyzw = r0.yyyy * float4(-31.25,9.25925827,0,11.1111107) + float4(18.75,-19.4444427,0,-0.92592603);
    r0.z = r0.y * r0.y;
    r6.xy = r6.xy * r0.zz + r6.zw;
    r7.xyz = cmp(r0.yyy >= float3(0,0.400000006,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r6.zw = r7.xy + r7.yz;
    r6.zw = float2(9.99999997e-007,9.99999997e-007) + r6.zw;
    r6.zw = float2(0.5,0.5) * r6.zw;
    r6.zw = frac(r6.zw);
    r6.xy = r6.zw * r6.xy;
    r6.xy = r6.xy + r6.xy;
    r0.w = saturate(r6.x + r6.y);
    r6.x = r0.w * 0.999000013 + 0.00100000005;
    r7.yz = r5.xy * float2(2,2) + float2(-1,-1);
    r8.xyzw = r0.yyyy * float4(-2.45271301,-7.11926317,-76.6857605,0) + float4(8.73768997,10.7115479,65.0548096,0);
    r9.xyzw = r0.yyyy * float4(0,-0.230350003,-14.2280121,0.990486979) + float4(0,0.00754699996,1.198704,0.603805006);
    r8.xyzw = r8.xyzw * r0.zzzz + r9.xyzw;
    r9.xyzw = cmp(r0.yyyy >= float4(0,0.113333002,0.235556006,0.382221997));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xyz = r9.xyz * r8.xyz;
    r0.w = 2;
    r8.xy = r0.ww * r8.xy;
    r8.x = r8.x + r8.y;
    r0.w = r0.w * r8.z + r8.x;
    r0.w = r8.w * r9.w + r0.w;
    r8.xyzw = r0.yyyy * float4(292.338379,57.6324463,-10.7296448,-3.43308306) + float4(-417.824219,-80.4557495,25.4733276,10.6769409);
    r9.xyzw = r0.yyyy * float4(193.71106,33.1481934,-21.2311401,-11.2020721) + float4(-28.3421173,-3.01615906,6.22241211,3.95041108);
    r10.xyz = r0.yyy * float3(-1.07087505,-5.92559814,-2) + float3(4.56910706,2.42736411,3);
    r8.xyzw = r8.xyzw * r0.zzzz + r9.xyzw;
    r9.x = r10.z * r0.z;
    r9.y = r10.x * r0.z + r10.y;
    r10.xyzw = cmp(r0.yyyy >= float4(0.400000006,0.436666995,0.553332984,0.673332989));
    r11.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r9.zw = cmp(r0.yy >= float2(0.870000005,1));
    r10.yz = r9.zw ? float2(1,1) : 0;
    r11.xyz = r11.xyz + r11.yzw;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r8.xyz = r11.xyz * r8.xyz;
    r9.w = r10.y + r10.z;
    r9.w = 9.99999997e-007 + r9.w;
    r9.w = 0.5 * r9.w;
    r9.w = frac(r9.w);
    r10.y = 2;
    r8.xy = r10.yy * r8.xy;
    r9.y = dot(r9.ww, r9.yy);
    r8.x = r8.x + r8.y;
    r8.x = r10.y * r8.z + r8.x;
    r8.x = r8.w * r11.w + r8.x;
    r0.w = r10.x ? r8.x : r0.w;
    r0.w = saturate(r9.z ? r9.y : r0.w);
    r0.w = r0.w * 90 + 10;
    r6.zw = r0.ww * float2(1,-0.699999988) + float2(0,0.699999988);
    r8.xy = saturate(r5.zw);
    r10.xyzw = r8.xxxx * float4(-0.494504005,-0.488802016,-0.102680996,0) + float4(0.532474995,0.880375028,0.263132989,1);
    r0.w = min(1, r9.x);
    r9.xyz = r0.www * float3(1,0.25,0.25) + float3(0.75,0.75,0.75);
    r0.w = r8.y * 0.0700000077 + 0.0799999982;
    r8.x = 0.899999976 * r0.w;
    r11.xyzw = r0.yyyy * float4(-16,16,0,24) + float4(12,-36,0,-4);
    r0.zw = r11.xy * r0.zz + r11.zw;
    r11.xyz = cmp(r0.yyy >= float3(0,0.5,1));
    r11.xyz = r11.xyz ? float3(1,1,1) : 0;
    r11.xy = r11.xy + r11.yz;
    r11.xy = float2(9.99999997e-007,9.99999997e-007) + r11.xy;
    r11.xy = float2(0.5,0.5) * r11.xy;
    r11.xy = frac(r11.xy);
    r0.yz = r11.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r8.y = 0.5 * r0.y;
    r0.x = mad(9, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r10.xyzw
    r10.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.yyyy, r3.xyzw
    r7.xw = r4.xy * float2(2,1) + float2(-1,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.zzzz, r7.xyzw
    r9.w = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.wwww, r9.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r6.y = -r6.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r6.xyzw
    r8.z = r4.w;
    r8.w = r2.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r8.xyzw
    r4.yzw = r5.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
    r2.x = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}