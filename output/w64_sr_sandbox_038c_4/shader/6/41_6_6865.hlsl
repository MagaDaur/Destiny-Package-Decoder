// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = t0.Load(r0.z).zw;
    r3.xy = t0.Load(r0.w).yx;
    r0.w = saturate(r1.w);
    r4.w = saturate(r3.x);
    r5.xy = r4.ww * float2(0.5,0.5) + float2(0.5,0.5);
    r6.xyzw = r0.wwww * float4(-2,3506.78784,0.349999994,-0.872034013) + float4(3,-306.485718,0.150000006,2.83304095);
    r7.x = r0.w * r0.w;
    r7.y = r7.x * r6.x;
    r7.y = min(1, r7.y);
    r7.y = r7.y * 3 + 1;
    r8.zw = r7.yy * float2(1,-1) + float2(0,1);
    r9.xyzw = r0.wwww * float4(6.03846216,-3.04998112,-8578.70605,-0.813857973) + float4(1,1.08897305,751.666809,2.85193491);
    r7.yz = r6.yw * r7.xx + r9.xy;
    r10.xyz = cmp(r0.www >= float3(0,0.0299999993,1));
    r10.xyz = r10.xyz ? float3(1,1,1) : 0;
    r9.xy = r10.xy + r10.yz;
    r9.xy = float2(9.99999997e-007,9.99999997e-007) + r9.xy;
    r9.xy = float2(0.5,0.5) * r9.xy;
    r9.xy = frac(r9.xy);
    r7.yz = r9.xy * r7.yz;
    r7.yz = r7.yz + r7.yz;
    r7.y = saturate(r7.y + r7.z);
    r6.w = r7.y * 0.300000012 + 0.100000001;
    r7.yz = r0.ww * float2(2.45000005,-3.26229596) + float2(0,1.22421896);
    r7.yz = r9.zw * r7.xx + r7.yz;
    r9.xyzw = cmp(r0.wwww >= float4(0,0.0599999987,0.0733330026,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r9.xz = r9.xz * r7.yz;
    r7.yz = r9.xy + r9.xy;
    r7.y = r7.y + r7.z;
    r7.y = saturate(r9.z * 2 + r7.y);
    r7.y = 0.300000012 * r7.y;
    r7.z = saturate(cb0[2].z);
    r9.xyzw = r7.zzzz * float4(2.52077603,15929.9912,2.45000005,45396.9766) + float4(-4.97368383,-46593.4727,1,-14733.4922);
    r7.w = r7.z * r7.z;
    r9.xy = r9.xy * r7.ww + r9.zw;
    r10.xyz = cmp(r7.zzz >= float3(0,0.949999988,1));
    r10.xyz = r10.xyz ? float3(1,1,1) : 0;
    r7.zw = r10.xy + r10.yz;
    r7.zw = float2(9.99999997e-007,9.99999997e-007) + r7.zw;
    r7.zw = float2(0.5,0.5) * r7.zw;
    r7.zw = frac(r7.zw);
    r7.zw = r7.zw * r9.xy;
    r7.zw = r7.zw + r7.zw;
    r7.z = saturate(r7.z + r7.w);
    r4.x = r7.y * r7.z;
    r7.yzw = r0.www * float3(-19886.9629,299.552643,-0.765887022) + float3(1394.34326,-118.237701,2.04322004);
    r9.xyz = r0.www * float3(-0.331395,8.95759296,-1.82825303) + float3(0,0.80903101,0.55092001);
    r7.xyz = r7.yzw * r7.xxx + r9.xyz;
    r9.xyzw = cmp(r0.wwww >= float4(0,0.0466669984,0.209999993,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r7.xyz = r9.xyz * r7.xyz;
    r7.xy = r7.xy + r7.xy;
    r0.w = r7.x + r7.y;
    r0.w = saturate(r7.z * 2 + r0.w);
    r4.y = r0.w * 0.949999988 + 0.0500000007;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
    r5.zw = cb0[3].yx;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r7.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.yyyy, r2.xyzw
    r8.xy = r5.yy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.zzzz, r8.xyzw
    r6.xy = r0.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.wwww, r6.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r4.z = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
    r3.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
  }
  return;
}