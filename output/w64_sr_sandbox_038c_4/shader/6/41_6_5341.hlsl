// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
Buffer<float4> t0 : register(t0);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r2.yz = t0.Load(r2.w).xy;
    r6.yz = r5.xy * float2(2,2) + float2(-1,-1);
    r0.y = cb13[0].y * 0.200000003;
    r0.y = frac(r0.y);
    r0.zw = saturate(r5.zw);
    r7.w = r0.y + r0.z;
    r0.y = saturate(r1.w);
    r8.xyzw = r0.yyyy * float4(2.05390596,-2.92248297,0,-0.355964988) + float4(0.147743002,4.60226822,0,-0.323817015);
    r9.x = r0.y * r0.y;
    r8.xy = r8.xy * r9.xx + r8.zw;
    r9.yzw = cmp(r0.yyy >= float3(0,0.55369103,1));
    r10.xyw = r9.yzw ? float3(1,1,1) : 0;
    r9.yzw = r10.xyw + r10.yww;
    r9.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.yzw;
    r9.yzw = float3(0.5,0.5,0.5) * r9.yzw;
    r9.yzw = frac(r9.yzw);
    r8.xy = r9.yz * r8.xy;
    r8.xy = float2(2,2) * r8.xy;
    r8.x = r8.x + r8.y;
    r8.x = r9.w * 2 + r8.x;
    r8.x = saturate(r10.w * 1 + r8.x);
    r8.x = r8.x * 1.39999998 + 0.100000001;
    r8.xy = r8.xx * float2(1,-0.5) + float2(0,0.5);
    r9.yzw = r0.yyy * float3(-326.91217,-8.58962059,0.978093982) + float3(65.1557312,6.06003809,-2.34643793);
    r10.xyz = r0.yyy * float3(2.7947371,-0.380264997,1.75859404) + float3(0,0.732589006,0.609749973);
    r9.yzw = r9.yzw * r9.xxx + r10.xyz;
    r10.xyzw = cmp(r0.yyyy >= float4(0,0.146465003,0.398990005,1));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r10.xyz = r10.xyz + r10.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.yzw = r10.xyz * r9.yzw;
    r9.yz = float2(2,2) * r9.yz;
    r9.y = r9.y + r9.z;
    r9.y = r9.w * 2 + r9.y;
    r8.z = saturate(r10.w * 1 + r9.y);
    r9.yzw = r0.zzz * float3(0.333332986,633533.125,0.382775992) + float3(0,-316766.406,0.617223978);
    r10.xyzw = cmp(r0.zzzz >= float4(0,0.5,0.500001013,1));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r10.xyz = r10.xyz + r10.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.yzw = r10.xyz * r9.yzw;
    r9.yz = float2(2,2) * r9.yz;
    r0.z = r9.y + r9.z;
    r0.z = r9.w * 2 + r0.z;
    r0.z = saturate(r10.w * 1 + r0.z);
    r10.xyz = r0.zzz * float3(-1,1,1) + float3(2,1,1);
    r11.xyzw = r0.yyyy * float4(-9.35559082,-0.0156789999,2.4375,1.15432405) + float4(2.73362899,-0.596500993,0,0.457855999);
    r9.yz = r11.xy * r9.xx + r11.zw;
    r11.xyz = cmp(r0.yyy >= float3(0,0.363635987,1));
    r11.xyw = r11.xyz ? float3(1,1,1) : 0;
    r11.xyz = r11.xyw + r11.yww;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r9.yz = r11.xy * r9.yz;
    r9.yz = float2(2,2) * r9.yz;
    r0.z = r9.y + r9.z;
    r0.z = r11.z * 2 + r0.z;
    r0.z = saturate(r11.w * 1 + r0.z);
    r0.z = r0.z * 0.100000001 + 0.100000001;
    r9.yz = r0.ww * float2(0.240876004,9.66666794) + float2(0,-8.66666794);
    r11.xyz = cmp(r0.www >= float3(0,0.919462979,1));
    r11.xyw = r11.xyz ? float3(1,1,1) : 0;
    r11.xyz = r11.xyw + r11.yww;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r9.yz = r11.xy * r9.yz;
    r9.yz = float2(2,2) * r9.yz;
    r0.w = r9.y + r9.z;
    r0.w = r11.z * 2 + r0.w;
    r0.w = saturate(r11.w * 1 + r0.w);
    r0.w = r0.w * 0.149999976 + 0.850000024;
    r0.z = r0.z * r0.w;
    r0.w = saturate(cb0[3].x * 0.25);
    r0.w = r0.w * r0.w;
    r0.w = r0.w * 0.550000012 + 0.300000012;
    r8.w = r0.z * r0.w;
    r9.yzw = r0.yyy * float3(-128,-14.7752876,18.2092667) + float3(48,16.0438728,-41.3514404);
    r11.xyz = r0.yyy * float3(0,-5.25157022,28.035614) + float3(0,1.54101396,-4.89343691);
    r9.xyz = r9.yzw * r9.xxx + r11.xyz;
    r11.xyzw = cmp(r0.yyyy >= float4(0,0.25,0.585859001,1));
    r11.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r11.xyz = r11.xyz + r11.yzw;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r9.xyz = r11.xyz * r9.xyz;
    r0.zw = r9.xy + r9.xy;
    r0.z = r0.z + r0.w;
    r9.x = saturate(r9.z * 2 + r0.z);
    r0.zw = r0.yy * float2(-2.56882596,-0.441240013) + float2(1,0.441240013);
    r11.xyz = cmp(r0.yyy >= float3(0,0.262625992,1));
    r11.xyz = r11.xyz ? float3(1,1,1) : 0;
    r11.xy = r11.xy + r11.yz;
    r11.xy = float2(9.99999997e-007,9.99999997e-007) + r11.xy;
    r11.xy = float2(0.5,0.5) * r11.xy;
    r11.xy = frac(r11.xy);
    r0.yz = r11.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.y = r0.y * 90 + 10;
    r0.z = saturate(r2.y);
    r11.xy = r0.zz * float2(0.437126011,4.03225803) + float2(0,-3.03225803);
    r12.xyz = cmp(r0.zzz >= float3(0,0.843433976,1));
    r12.xyw = r12.xyz ? float3(1,1,1) : 0;
    r12.xyz = r12.xyw + r12.yww;
    r12.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r12.xyz;
    r12.xyz = float3(0.5,0.5,0.5) * r12.xyz;
    r12.xyz = frac(r12.xyz);
    r0.zw = r12.xy * r11.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r12.z * 2 + r0.z;
    r0.z = saturate(r12.w * 1 + r0.z);
    r0.z = r0.z * 0.75 + 0.25;
    r9.y = r0.y * r0.z;
    r0.x = mad(9, (int)vThreadID.x, (int)r0.x);
    r7.xy = float2(0.200000003,0.200000003);
    r7.z = cb0[4].x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r7.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.yyyy, r3.xyzw
    r6.xw = r4.xy * float2(2,1) + float2(-1,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.zzzz, r6.xyzw
    r10.w = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.wwww, r10.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r8.xyzw
    r9.z = r4.w;
    r9.w = r2.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r9.xyzw
    r4.yzw = r5.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
    r2.x = r5.w;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}