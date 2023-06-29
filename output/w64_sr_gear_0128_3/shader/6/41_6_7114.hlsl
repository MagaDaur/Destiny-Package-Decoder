// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
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
    r0.yzw = t0.Load(r2.y).xyw;
    r4.xyzw = t0.Load(r2.z).xyzw;
    r2.xyz = t0.Load(r2.w).xyz;
    r5.x = saturate(r1.w);
    r6.w = 0.200000003 * r5.x;
    r5.yzw = r5.xxx * float3(1.19521904,1.71426296,-0.239583001) + float3(-0.195218995,-2.47467899,1);
    r7.xy = cmp(r5.xx >= float2(0.163332999,1));
    r7.yw = r7.xy ? float2(1,1) : 0;
    r7.xy = r7.yw + r7.ww;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.yz = frac(r7.xy);
    r7.x = r7.y * r5.y;
    r7.xy = float2(2,2) * r7.xz;
    r5.y = r7.x + r7.y;
    r7.x = saturate(r7.w * 1 + r5.y);
    r5.y = r5.x * r5.x;
    r5.z = r5.z * r5.y + r5.w;
    r5.z = max(0, r5.z);
    r8.x = r5.z * 0.636000037 + 0.108000003;
    r9.xz = saturate(r4.yx);
    r10.xyz = r9.xxx * float3(0.223973006,-1.27586198,-3.27586198) + float3(0.502054989,3.55172396,1);
    r5.z = r9.x * r9.x;
    r5.w = r10.x * r5.z;
    r5.w = r9.x * 0.273972988 + r5.w;
    r5.w = min(1, r5.w);
    r8.y = r5.w * 0.600000024 + 0.400000006;
    r11.xyz = r5.xxx * float3(0.551724017,-295.639099,0.194573) + float3(-2.10344791,84.3003311,1.14689398);
    r5.w = r11.x * r5.y;
    r5.w = saturate(r5.x * 2.55172396 + r5.w);
    r8.z = r5.w * 0.349999994 + 0.150000006;
    r5.z = saturate(r10.y * r5.z + r10.z);
    r5.z = r5.z * 0.049999997 + 0.0299999993;
    r10.xyzw = r5.xxxx * float4(0,-2.87750602,5,-5) + float4(0,1.53603899,0,5);
    r10.xy = r11.yz * r5.yy + r10.xy;
    r11.xyz = cmp(r5.xxx >= float3(0,0.203333005,1));
    r11.xyz = r11.xyz ? float3(1,1,1) : 0;
    r11.xy = r11.xy + r11.yz;
    r11.xy = float2(9.99999997e-007,9.99999997e-007) + r11.xy;
    r11.xy = float2(0.5,0.5) * r11.xy;
    r11.xy = frac(r11.xy);
    r10.xy = r11.xy * r10.xy;
    r10.xy = r10.xy + r10.xy;
    r5.w = saturate(r10.x + r10.y);
    r8.w = r5.z * r5.w;
    r11.xyzw = cmp(r5.xxxx >= float4(0,0.200000003,0.800000012,1));
    r11.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r11.xyz = r11.xyz + r11.yzw;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r11.xz = r11.xz * r10.zw;
    r5.zw = r11.xy + r11.xy;
    r5.z = r5.z + r5.w;
    r5.z = r11.z * 2 + r5.z;
    r10.x = min(1, r5.z);
    r11.xyzw = r5.xxxx * float4(-2784.39697,2.65403008,-0.331395,0.71658802) + float4(377.73468,-4.33933878,0,0.968720973);
    r5.zw = r11.xy * r5.yy + r11.zw;
    r11.xyz = cmp(r5.xxx >= float3(0,0.0900000036,1));
    r11.xyz = r11.xyz ? float3(1,1,1) : 0;
    r11.xy = r11.xy + r11.yz;
    r11.xy = float2(9.99999997e-007,9.99999997e-007) + r11.xy;
    r11.xy = float2(0.5,0.5) * r11.xy;
    r11.xy = frac(r11.xy);
    r5.zw = r11.xy * r5.zw;
    r5.zw = r5.zw + r5.zw;
    r5.z = saturate(r5.z + r5.w);
    r10.y = 10000 * r5.z;
    r5.z = 3.04545498 * r5.x;
    r5.x = r5.x * 1.04545498 + -3.090909;
    r5.x = saturate(r5.x * r5.y + r5.z);
    r5.xyz = r5.xxx * float3(-0.100266002,-0.167063981,0.158885002) + float3(0.199530005,0.259063989,0.841114998);
    r10.w = saturate(r2.z);
    r0.x = mad(11, (int)vThreadID.x, (int)r0.x);
    r7.y = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xxyy
    r11.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r9.xy = float2(1,0.5);
    r9.w = cb0[3].z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.xxxx, r9.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.zzzz, r3.xyzw
    r5.w = r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.wwww, r5.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r7.zw = r9.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r7.xxzw
    r6.x = r0.z;
    r6.yz = r7.xz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r8.xyzw
    r10.z = r0.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r10.xyzw
    r0.yz = (int2)r0.xx + int2(9,10);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r2.xyzw
  }
  return;
}