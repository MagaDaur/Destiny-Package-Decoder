// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
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
    r0.y = mad(3, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = (int2)r0.yy + int2(1,2);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = t0.Load(r0.z).xy;
    r0.w = saturate(r1.w);
    r3.xyzw = r0.wwww * float4(0,633.103271,15.9691162,1.450863) + float4(0,-99.9708252,-10.4739227,-2.5933609);
    r4.xyzw = r0.wwww * float4(16.5817337,7.99419689,3.62891603,2.19626808) + float4(0,0.0506860018,0.122795001,0.210247993);
    r5.xyzw = r0.wwww * float4(0.153933004,-0.294095993,1.50990403,0.496670008) + float4(-0.970156014,0.192871004,0.308346987,0.604618013);
    r6.x = r0.w * r0.w;
    r3.xyzw = r3.xyzw * r6.xxxx + r4.xyzw;
    r4.xy = r5.xy * r6.xx + r5.zw;
    r5.xyzw = cmp(r0.wwww >= float4(0,0.00555599993,0.0555559993,0.200000003));
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
    r6.yzw = cmp(r0.www >= float3(0.427778006,0.866666973,1));
    r7.xyw = r6.yzw ? float3(1,1,1) : 0;
    r5.xyz = r5.xyz + r5.yzw;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r3.xyz = r5.xyz * r3.xyz;
    r5.xyz = r7.xyw + r7.yww;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r4.xy = r5.xy * r4.xy;
    r4.z = 2;
    r3.xy = r4.zz * r3.xy;
    r4.xy = float2(2,2) * r4.xy;
    r3.x = r3.x + r3.y;
    r3.x = r4.z * r3.z + r3.x;
    r3.x = r3.w * r5.w + r3.x;
    r3.y = r4.x + r4.y;
    r3.y = r5.z * 2 + r3.y;
    r3.y = r7.w * 1 + r3.y;
    r3.x = saturate(r6.y ? r3.y : r3.x);
    r3.w = r3.x * 0.699999988 + 0.0500000007;
    r4.xyzw = r0.wwww * float4(0,-355.229492,-22.3005371,-3.21990204) + float4(0,82.3873596,16.8900452,6.79430389);
    r5.xyzw = r0.wwww * float4(-12.3971052,-10.1499023,-5.86216021,-4.06586981) + float4(1,0.945689976,0.852141976,0.74446398);
    r6.yzw = r0.www * float3(1.73480201,-2.19499207,0.0149670001) + float3(1.54370105,0.52045399,0.985032976);
    r4.xyzw = r4.xyzw * r6.xxxx + r5.xyzw;
    r5.x = r6.y * r6.x + r6.z;
    r7.xyzw = cmp(r0.wwww >= float4(0,0.0157210007,0.0741129965,0.188651994));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r8.xyzw = cmp(r0.wwww >= float4(0.348109007,0.404255003,0.988888979,1));
    r9.xyzw = r8.xwyz ? float4(1,1,1,1) : 0;
    r5.yzw = r7.xyz + r7.yzw;
    r5.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) * r5.yzw;
    r5.yzw = frac(r5.yzw);
    r4.xyz = r5.yzw * r4.xyz;
    r5.yzw = r9.xwy + r9.zyy;
    r5.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.yzw;
    r5.yzw = float3(0.5,0.5,0.5) * r5.yzw;
    r5.yzw = frac(r5.yzw);
    r6.y = 2;
    r4.xy = r6.yy * r4.xy;
    r5.x = dot(r5.yy, r5.xx);
    r4.x = r4.x + r4.y;
    r4.x = r6.y * r4.z + r4.x;
    r4.x = r4.w * r7.w + r4.x;
    r4.x = saturate(r8.x ? r5.x : r4.x);
    r7.x = 1.55799997 * r4.x;
    r10.xyzw = r0.wwww * float4(1.49296403,-4.52658796,-2.10488105,1.56652999) + float4(1.32714903,7.22701979,1.77679396,-5.966465);
    r11.xyzw = r0.wwww * float4(0,-1.86363196,1.85710895,7.24231005) + float4(0,0.191317007,-0.610275984,-1.84229398);
    r10.xyzw = r10.xyzw * r6.xxxx + r11.xyzw;
    r11.xyzw = cmp(r0.wwww >= float4(0,0.283333004,0.527778029,0.755555987));
    r11.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r4.yzw = r11.xyz + r11.yzw;
    r4.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r4.yzw;
    r4.yzw = float3(0.5,0.5,0.5) * r4.yzw;
    r4.yzw = frac(r4.yzw);
    r4.yzw = r4.yzw * r10.xyz;
    r5.x = r5.z * r6.w;
    r5.y = 2;
    r4.yz = r5.yy * r4.yz;
    r5.x = 2 * r5.x;
    r4.y = r4.y + r4.z;
    r4.y = r5.y * r4.w + r4.y;
    r4.y = r10.w * r11.w + r4.y;
    r4.z = r5.w * 4 + r5.x;
    r4.z = r9.y * 1 + r4.z;
    r4.y = saturate(r8.z ? r4.z : r4.y);
    r4.y = 1 + r4.y;
    r3.xy = r4.yy * float2(1,-0.5) + float2(0,0.5);
    r5.xyzw = r0.wwww * float4(114.545898,103.313965,73.9375,0) + float4(-56.0558472,-54.302002,-45.5144653,0);
    r8.xyzw = r0.wwww * float4(11.2566166,11.087616,10.1673279,1.24382806) + float4(0,0.00522099994,0.0383209996,0.602061987);
    r9.xyzw = r0.wwww * float4(4.20391798,0.171196997,2.40285206,0.614138007) + float4(-5.21758986,-0.547197998,0.535674989,0.761862993);
    r5.xyzw = r5.xyzw * r6.xxxx + r8.xyzw;
    r4.yz = r9.xy * r6.xx + r9.zw;
    r8.xyzw = cmp(r0.wwww >= float4(0,0.0468220003,0.0907780007,0.149067));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r6.yzw = cmp(r0.www >= float3(0.172000006,0.425000012,1));
    r9.xyw = r6.yzw ? float3(1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r5.xyz = r8.xyz * r5.xyz;
    r8.xyz = r9.xyw + r9.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r4.yz = r8.xy * r4.yz;
    r4.w = 2;
    r5.xy = r4.ww * r5.xy;
    r4.yz = float2(2,2) * r4.yz;
    r5.x = r5.x + r5.y;
    r4.w = r4.w * r5.z + r5.x;
    r4.w = r5.w * r8.w + r4.w;
    r4.y = r4.y + r4.z;
    r4.y = r8.z * 2 + r4.y;
    r4.y = r9.w * 1 + r4.y;
    r4.y = saturate(r6.y ? r4.y : r4.w);
    r5.xyz = r4.yyy * float3(0.699999988,0.699999988,0.699999988) + float3(0.300000012,0.300000012,0.300000012);
    r8.xyzw = r0.wwww * float4(41.2520447,-0.133653,-1.60603905,-0.624285996) + float4(-16.8297577,0.494765013,1.00000203,0.263173997);
    r4.yz = r8.xy * r6.xx + r8.zw;
    r8.xyzw = cmp(r0.wwww >= float4(0,9.99999997e-007,0.305000007,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r6.yzw = r8.xyz + r8.yzw;
    r6.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.yzw;
    r6.yzw = float3(0.5,0.5,0.5) * r6.yzw;
    r6.yzw = frac(r6.yzw);
    r6.zw = r6.zw * r4.yz;
    r4.yz = r6.yz + r6.yz;
    r4.y = r4.y + r4.z;
    r8.x = saturate(r6.w * 2 + r4.y);
    r4.yzw = r0.www * float3(1312.87817,-0.0249300003,0.00135499996) + float3(-221.34082,0.140434995,0.0572739989);
    r6.yzw = r0.www * float3(0,-0.204629004,-0.118612997) + float3(1,0.089192003,0.0599839985);
    r4.yzw = r4.yzw * r6.xxx + r6.yzw;
    r6.xyzw = cmp(r0.wwww >= float4(0,0.112000003,0.881600022,1));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r6.xyz = r6.xyz + r6.yzw;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r4.yzw = r6.xyz * r4.yzw;
    r4.yz = r4.yz + r4.yz;
    r0.w = r4.y + r4.z;
    r0.w = saturate(r4.w * 2 + r0.w);
    r4.yz = float2(-0,-0.5) + r0.ww;
    r4.yz = saturate(r4.yz + r4.yz);
    r4.yz = float2(9,90) * r4.yz;
    r0.w = dot(float2(1,1), r4.yz);
    r8.y = 1 + r0.w;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, l(1.000000,1.000000,0,0)
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r7.z = -r4.x * 0.778999984 + 0.5;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r7.xxzz
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r2.xyzw
    r5.w = r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r5.xyzw
    r0.yw = (int2)r0.xx + int2(5,6);
    r3.z = r0.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
    r8.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r8.xyzw
  }
  return;
}