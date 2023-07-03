// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
    r0.y = saturate(r4.x);
    r6.xyzw = float4(-0,-0.25,-0.5,-0.75) + r0.yyyy;
    r6.xyzw = saturate(float4(4,4,4,4) * r6.xyzw);
    r0.yzw = float3(-0.00595299993,-0.246775001,-0.250158012) * r6.yzw;
    r7.xy = float2(-0.149959996,0.250158012) * r6.xz;
    r6.xyzw = float4(-0.0202890001,0.502885997,-0.502885997,0.250158012) * r6.xyzw;
    r8.x = dot(float3(1,1,1), r0.yzw);
    r8.y = dot(float2(1,1), r7.xy);
    r8.z = dot(float4(1,1,1,1), r6.xyzw);
    r6.xyz = float3(0.502885997,0.149959996,0.0202890001) + r8.xyz;
    r7.xyzw = saturate(r5.xxyy);
    r8.xyzw = r7.xyzw * float4(-1.27586198,-3.27586198,0.392726988,7.68000221) + float4(3.55172396,1,0,-6.68000221);
    r0.y = r7.y * r7.y;
    r0.y = saturate(r8.x * r0.y + r8.y);
    r0.y = r0.y * 0.00999999978 + 0.0199999996;
    r0.z = saturate(r1.w);
    r7.xyz = r0.zzz * float3(-16132.5586,308.071716,-0.417968988) + float3(1213.25586,-114.90522,1.67484403);
    r9.xyz = r0.zzz * float3(-0.331395,9.17998409,-2.0957799) + float3(0,0.789754987,0.838904977);
    r0.w = r0.z * r0.z;
    r7.xyz = r7.xyz * r0.www + r9.xyz;
    r9.xyzw = cmp(r0.zzzz >= float4(0,0.0500000007,0.186666995,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r7.xyz = r9.xyz * r7.xyz;
    r0.zw = r7.xy + r7.xy;
    r0.z = r0.z + r0.w;
    r0.z = saturate(r7.z * 2 + r0.z);
    r0.w = r0.z * 0.800000012 + 0.200000003;
    r9.y = r0.y * r0.w;
    r7.xyz = cmp(r7.www >= float3(0,0.916666985,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r0.yw = r7.xy * r8.zw;
    r0.yw = float2(2,2) * r0.yw;
    r0.y = r0.y + r0.w;
    r0.y = r7.z * 2 + r0.y;
    r0.y = saturate(r7.w * 1 + r0.y);
    r0.y = r0.y * 50 + 50;
    r9.z = r0.y * r0.z;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r6.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r9.xw = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r9.xyzw
    r4.yzw = r5.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
    r0.y = (int)r0.x + 5;
    r2.x = r5.w;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  }
  return;
}